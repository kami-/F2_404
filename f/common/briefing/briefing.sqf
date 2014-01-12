// F2 - OA Briefing
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

// DECLARE VARIABLES AND FUNCTIONS

private ["_unitside"];

// ====================================================================================

// DETECT PLAYER side
// The following code detects what side the player's slot belongs to, and stores
// it in the private variable _unitside

_unitside = (side player);

// If the unitside is different from the group leader's side, the latters side is used
if (_unitside != (side (leader group player))) then {_unitside = (side (leader group player))};

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Player side: %1",_unitside];
	};

// ====================================================================================

// BRIEFING: WEST

if (_unitside == west) exitwith {

#include "f_briefing_west.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitside];
	};
};

// ====================================================================================

// BRIEFING: EAST

if (_unitside == east) exitwith {

#include "f_briefing_east.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitside];
	};
};

// ====================================================================================

// BRIEFING: RESISTANCE

if (_unitside == resistance) exitwith {

#include "f_briefing_res.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitside];
	};
};

// ====================================================================================

// BRIEFING: CIVILIAN

if (_unitside == civilian) exitwith {

#include "f_briefing_civ.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitside];
	};
};


// ====================================================================================


// ERROR CHECKING
// If the side of the unit cannot be defined, the script exits with an error.

player globalchat format ["DEBUG (briefing.sqf): side %1 is not defined.",_unitside];
