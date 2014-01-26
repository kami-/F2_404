#define DEBUG_0(msg) if (f_var_debugMode == 1) then { MSG_FORMAT_0(DEBUG_STAT,DEBUG,msg); MSG_FORMAT_0(LOG_STAT,DEBUG,msg); }
#define DEBUG_1(msg,var1) if (f_var_debugMode == 1) then { MSG_FORMAT_1(DEBUG_STAT,DEBUG,msg,var1); MSG_FORMAT_1(LOG_STAT,DEBUG,msg,var1); }
#define DEBUG_2(msg,var1,var2) if (f_var_debugMode == 1) then { MSG_FORMAT_2(DEBUG_STAT,DEBUG,msg,var1,var2); MSG_FORMAT_2(LOG_STAT,DEBUG,msg,var1,var2) }
#define DEBUG_3(msg,var1,var2,var3) if (f_var_debugMode == 1) then { MSG_FORMAT_3(DEBUG_STAT,DEBUG,msg,var1,var2,var3); MSG_FORMAT_3(LOG_STAT,DEBUG,msg,var1,var2,var3) }

#define LOG_0(msg) MSG_FORMAT_0(LOG_STAT,LOG,msg)
#define LOG_1(msg,var1) MSG_FORMAT_1(LOG_STAT,LOG,msg,var1)
#define LOG_2(msg,var1,var2) MSG_FORMAT_2(LOG_STAT,LOG,msg,var1,var2)
#define LOG_3(msg,var1,var2,var3) MSG_FORMAT_3(LOG_STAT,LOG,msg,var1,var2,var3)

#define MSG_FORMAT_0(stat,type,msg) stat format ['[F2_ACE - type]: msg']
#define MSG_FORMAT_1(stat,type,msg,var1) stat format ['[F2_ACE - type]: msg',var1]
#define MSG_FORMAT_2(stat,type,msg,var1,var2) stat format ['[F2_ACE - type]: msg',var1,var2]
#define MSG_FORMAT_3(stat,type,msg,var1,var2,var3) stat format ['[F2_ACE - type]: msg',var1,var2,var3]

#define DEBUG_STAT player sideChat
#define LOG_STAT diag_log

//F2_ACE - AI init
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// 
if (isNil "f_var_debugMode") then { f_var_debugMode = 0; };

// Headless Client's default names, that will be searched for
if (isNil "f_HC_defaultNames" || {count f_HC_defaultNames == 0}) then { f_HC_defaultNames = ["HC", "HeadlessClient"]; };

// Wait for player variable to be set
if(!isServer) then { waitUntil{ !isNull player } };

// Server checks for player that has the HC default name, and set it's presence
if (isServer) then {
	f_HC_name = "NOONE";
	f_HC_isPresent = false;

	private ["_unitsHC"];
	_unitsHC = [playableUnits, {isPlayer _x && {name _x in f_HC_defaultNames}}] call BIS_fnc_conditionalSelect;
	DEBUG_2(Units controlled by players with %1 name: %2,f_HC_defaultNames,_unitsHC);
	if (count _unitsHC > 0) then {
		f_HC_name = name (_unitsHC select 0);
		f_HC_isPresent = true;
		DEBUG_1(Headless Client found with name: %1,f_HC_name);
	};

	DEBUG_2(Values f_HC_name: %1; and f_HC_isPresent: %2,f_HC_name, f_HC_isPresent);
	publicVariable "f_HC_name";
	publicVariable "f_HC_isPresent";
};

waitUntil { !isNil "f_HC_name" && !isNil "f_HC_isPresent" };

// Execute 404 AI init on HC, if it's present, otherwise execute it on the Server
if (f_HC_isPresent) then {
	if ((name player) == f_HC_name && {!isServer}) then { 
		execVM "404_ai\ai_init.sqf";
		LOG_0(Headless Client started succesfully!);
	};
}
else {
	if (isServer) then {
		execVM "404_ai\ai_init.sqf";
		LOG_0(Server started succesfully!);
	};
};
