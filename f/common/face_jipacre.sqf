//F2_ACE - JIP ACRE fix
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// Wait until player is initializes and time > 10 for good measure.
if (!isDedicated && (player != player)) then
{
	waitUntil {player == player};
	waitUntil {time > 10};
};

// Wait until player is dead and initialize ACRE.
waitUntil{sleep 10; !alive player};
[true] call acre_api_fnc_setSpectator;
