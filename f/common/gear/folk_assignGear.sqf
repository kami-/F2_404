// F2 - OA Assign Gear v2
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_faction","_typeofUnit","_unit"];
private [
//"_faction",												
"_glrifle","_glriflemag","_glmag",						
"_glsmokewhite","_glsmokegreen","_glsmokered",			
"_glflarewhite","_glflarered","_glflareyellow","_glflaregreen",
"_AR","_ARmag",											
"_MMG","_MMGmag",										
"_HMG","_HMGmount",				
"_RAT","_RATmag",			
"_MAT","_MATmag1","_MATmag2",
"_HAT","_HATmag1","_HATmag2",
"_MTR","_MTRmount",					
"_RAA","_RAAmag",			
"_SNrifle","_SNriflemag",			
"_pistol","_pistolmag",									
"_grenade","_smokegrenade","_smokegreen",									
"_rifle","_riflemag",									
"_carbine","_carbinemag",								
"_smg","_smgmag",										
"_bagmedium","_baglarge",
"_mine","_satchel",
"_radio1","_radio2","_radio3"
];

// ====================================================================================

// DETECT PLAYER FACTION
// The following code detects what faction the player's slot belongs to, and stores
// it in the private variable _faction

_typeofUnit = toLower (_this select 0);
_unit = _this select 1;
_faction = toLower (faction _unit);

// If the unitfaction is different from the group leader's faction and the unit is not a vehicle, the latters faction is used
if ((_unit isKindOF "CAManBase")&&(_faction != toLower (faction (leader group _unit)))) then {_faction = toLower (faction (leader group _unit))};

switch(_faction) do
{
//case "pmc_baf":{_faction = "bis_un";};						// PMC get the UN gear
case "civ":{_faction="bis_tk_civ";};		// CIV as TIK_CIV (note: no backpacks for A2 original units)
case "civ_ru":{_faction="bis_tk_civ";};		// CIV_RU as TK_CIV (note: no backpacks for A2 original units)
};

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (assignGear.sqf): Player faction: %1",_faction];
	};


// ====================================================================================

// GEAR: US
// The following block of code executes only if the player is in a US slot; it 
// automatically includes a file which contains the appropriate equipment data.

if (_faction == "bis_us") then {
#include "templates\folk_assignGear_m16a4.sqf"
};

// ====================================================================================

// GEAR: USMC
// The following block of code executes only if the player is in a USMC slot; it 
// automatically includes a file which contains the appropriate equipment data.

if (_faction == "usmc") then {
#include "templates\folk_assignGear_m16a4.sqf"
};

// ====================================================================================

// GEAR: CDF
// The following block of code executes only if the player is in a CDF slot; it 
// automatically includes a file which contains the appropriate equipment data.

if (_faction == "cdf") then {
#include "templates\folk_assignGear_ak74.sqf"
};

// ====================================================================================

// GEAR: BRITISH ARMED FORCES
// The following block of code executes only if the player is in a BRITISH ARMED FORCES
// slot; it automatically includes a file which contains the appropriate equipment data.

if (_faction == "bis_baf") then {
#include "templates\folk_assignGear_l85_ukf.sqf"
};

// ====================================================================================

// GEAR: TAKISTANI ARMY
// The following block of code executes only if the player is in a TAKISTANI ARMY slot; it 
// automatically includes a file which contains the appropriate equipment data.

if (_faction == "bis_tk") then {
#include "templates\folk_assignGear_ak74.sqf"
};

// ====================================================================================

// GEAR: RUSSIA
// The following block of code executes only if the player is in a RUSSIA slot; it 
// automatically includes a file which contains the appropriate equipment data.

if (_faction == "ru") then {
#include "templates\folk_assignGear_ak74m.sqf"
};

// ====================================================================================

// GEAR: TAKISTANI MILITIA
// The following block of code executes only if the player is in a TAKISTANI MILITIA slot; it 
// automatically includes a file which contains the appropriate equipment data.

if (_faction == "bis_tk_ins") then {
#include "templates\folk_assignGear_akm.sqf"
};

// ====================================================================================

// GEAR: INSURGENT
// The following block of code executes only if the player is in a INSURGENT slot; it 
// automatically includes a file which contains the appropriate equipment data.

if (_faction == "ins") then {
#include "templates\folk_assignGear_ak74.sqf"
};

// ====================================================================================

// GEAR: TAKISTANI LOCALS (INDEPENDENT)
// The following block of code executes only if the player is in a TAKISTANI LOCALS (INDEPENDENT) slot; it 
// automatically includes a file which contains the appropriate equipment data.

if (_faction == "bis_tk_gue") then {
#include "templates\folk_assignGear_akm.sqf"
};

// ====================================================================================

// GEAR: GUERILLAS
// The following block of code executes only if the player is in a GUERILLA slot; it 
// automatically includes a file which contains the appropriate equipment data.

if (_faction == "gue") then {
#include "templates\folk_assignGear_akm.sqf"
};

// ====================================================================================

// GEAR: UN
// The following block of code executes only if the player is in a UN slot; it 
// automatically includes a file which contains the appropriate equipment data.

if (_faction == "bis_un") then {
#include "templates\folk_assignGear_ak4.sqf"
};

// ====================================================================================

// GEAR: CZECH REPUBPLIC
// The following block of code executes only if the player is in a CZECH REPUBPLIC slot; it 
// automatically includes a file which contains the appropriate equipment data.

if (_faction == "bis_cz") then {
#include "templates\folk_assignGear_ak74.sqf" // For now, as no seperate loadout for Czech Army available.
};

// ====================================================================================

// GEAR: GERMAN
// The following block of code executes only if the player is in a GERMAN slot; it 
// automatically includes a file which contains the appropriate equipment data.

if (_faction == "bis_ger") then {
#include "templates\folk_assignGear_g36-nougl.sqf"
};

// ====================================================================================

// GEAR: CIVILIAN (TAKISTANI)
// The following block of code executes only if the player is in a CIVILIAN (TAKISTANI) slot; it 
// automatically includes a file which contains the appropriate equipment data.

if (_faction == "bis_tk_civ") then {
#include "templates\folk_assignGear_akm.sqf"
};

// ====================================================================================

// GEAR: CIVILIAN (SPECIAL)
// The following block of code executes only if the player is in a CIVILIAN (SPECIAL) slot; it 
// automatically includes a file which contains the appropriate equipment data.

if (_faction == "bis_civ_special") then {
#include "templates\folk_assignGear_akm.sqf"
};

// ====================================================================================

// GEAR: PMC
// The following block of code executes only if the player is in a CIVILIAN (SPECIAL) slot; it 
// automatically includes a file which contains the appropriate equipment data.

if (_faction == "pmc_baf") then {
#include "templates\folk_assignGear_hk416.sqf"
};

// ====================================================================================

// GEAR: ACRE

_this execVM "f\common\gear\folk_assignGear_acre.sqf";

// ====================================================================================

// GEAR: ACE

#include "folk_assignGear_ace.sqf"

// ====================================================================================

// GEAR: NVGs

#include "face_assignGear_nvgs.sqf"

// ====================================================================================

// DEBUG

// ====================================================================================

// ERROR CHECKING
// If the faction of the unit cannot be defined, the script exits with an error.

if (isNil "_carbine") then { //_carbine should exist unless no faction has been called
	player globalchat format ["DEBUG (assignGear.sqf): Faction %1 is not defined.",_faction];
} else {
 	if (f_var_debugMode == 1) then	{
		player sideChat format ["DEBUG (assignGear.sqf): Gear for %1: %1 slot selected.",_unit,_faction,_typeofUnit];
	};
};

// ====================================================================================

// DELETE PRE-COMPILE UNITS
// Two units are placed on the map (lower left-hand corner) to aid with the assignGear
// scripts. After a short while we delete these (so they do not confuse the spectator
// script).

if (isServer) then {
	[] execVM "f\common\gear\folk_assignGearCleanUp.sqf";
};
