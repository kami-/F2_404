// F2 - Buddy Team Colours
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// JIP CHECK
// Prevents the script executing until the player has synchronised correctly:

if (!isDedicated && (player != player)) then
{
    waitUntil {player == player};
    waitUntil {time > 10};
};

// ====================================================================================

// DECLARE PRIVATE VARIABLES

private ["_unit","_isFireteam"];

// ====================================================================================

// WAIT FOR PLAYER TO GO IN-GAME AND ST-HUD TO INTIALISE

waitUntil{alive player}; // Wait for player to get in-game

waitUntil{!isNil "ST_FTHud_Init"}; // Wait for ST-Hud to begin initialising

sleep 10; // Give it 10 seconds, just in case

// ====================================================================================

// SET KEY VARIABLES

_unit = player;

// ====================================================================================

// CHECK GROUP SIZE
// If the group isn't a full fireteam, leave teams as default.

if( (count (units (group _unit))) != 4 ) exitWith {};

_result = [format["%1",(leader (group _unit))], "_FTL"] call CBA_fnc_find;
if(_result < 0) exitWith {};

// SET TEAM COLOURS

{
	if( (([format["%1",(vehicle _x)], "_AR"] call CBA_fnc_find) > 0) || (([format["%1", (vehicle _x)], "_AAR"] call CBA_fnc_find) > 0) ) then
	{
		_x assignTeam "BLUE";
	};
	
	if( (([format["%1",(vehicle _x)], "_AT"] call CBA_fnc_find) > 0) || (([format["%1", (vehicle _x)], "_FTL"] call CBA_fnc_find) > 0) ) then
	{
		_x assignTeam "RED";
	};
} foreach units (group _unit);

// ===================================================================================== 

if (true) exitWith {};
