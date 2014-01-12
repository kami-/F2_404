// F2_ACE - Safe Start
// Credits: Please see the F2_ACE online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================
//	This script inits the Mission Timer and the Safe Start, has the server setup the publicVariable 
//      while the client waits, sets units invincibility and displays hints, then disables it.

//Wait for sync
if (!isDedicated && (player != player)) then
{
    waitUntil {player == player};
    waitUntil {time > 10};
};


//Have the server setup the variables while clients wait for jip
if(isServer) then 
{
	pv_mission_timer = f_var_mission_timer;
	publicVariable "pv_mission_timer";
};

//wait until server has initialized pv_mission_timer OR f_var_mission_timer was not set
waituntil {sleep 3; ((!isNil "pv_mission_timer") || (f_var_mission_timer == 0));};

//JIP clients are sent PVs before can init.sqf can process
if (pv_mission_timer > 0) then
{
	//Start Mission Timer, Mission Timer Hint, turn on invincibility
	[] execVM "f\server\f_safeStartLoop.sqf";
	[] execVM "f\common\safestart\f_safeStartHint.sqf";
	[true] execVM "f\common\safestart\f_safety.sqf";
	
	//Wait until timer hits 0, turn invincibility off
	waituntil {sleep 10; pv_mission_timer == 0};
	[false] execVM "f\common\safestart\f_safety.sqf";
};
