// Folk Assign Gear Script - ACE Wounds Equipment
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// General Equipment

_unit addWeapon "ACE_Earplugs";
_success = [_unit, 2, 2, 0] call ACE_fnc_PackIFAK;

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;							// expecting name of unit; originally passed by using 'this' in unit init

// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// LOADOUT: COMMANDER
	case "co":
	{
		//_unit addweapon "ACE_Map_Tools";
	};	
  
// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{
		//_unit addweapon "ACE_Map_Tools";
	};	

// LOADOUT: MEDIC
	case "m":
	{
		_success = [_unit, "ACE_LargeBandage", 20] call ACE_fnc_PackMagazine;
		_success = [_unit, "ACE_Morphine", 20] call ACE_fnc_PackMagazine;
		_success = [_unit, "ACE_Epinephrine", 20] call ACE_fnc_PackMagazine;
		_success = [_unit, "ACE_Medkit", 8] call ACE_fnc_PackMagazine;
	};
	
// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		//_unit addweapon "ACE_Map_Tools";
	};	
	
// LOADOUT: SURFACE TO AIR MISSILE GUNNER 
	case "samg":
	{
		//_unit addweapon "ACE_Map_Tools";
	};	
	
// LOADOUT: ASSISTANT SURFACE TO AIR MISSILE GUNNER
	case "samag":
	{
		//_unit addweapon "ACE_Map_Tools";
	};	
	
// LOADOUT: MEDIUM MG GUNNER	
	case "mmgg":
	{
		//_unit addweapon "ACE_Map_Tools";
	};	

// LOADOUT: MEDIUM MG ASSISTANT GUNNER	
	case "mmgag":
	{
		//_unit addweapon "ACE_Map_Tools";
	};	
	
// LOADOUT: HEAVY MG GUNNER
	case "hmgg":
	{
		//_unit addweapon "ACE_Map_Tools";
	};	
	
// LOADOUT: HEAVY MG ASSISTANT GUNNER
	case "hmgag":
	{
		//_unit addweapon "ACE_Map_Tools";
	};	

// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{
		//_unit addweapon "ACE_Map_Tools";
	};	
	
// LOADOUT: MEDIUM AT ASSISTANT GUNNER	
	case "matag":
	{
		//_unit addweapon "ACE_Map_Tools";
	};	
	
// LOADOUT: HEAVY AT GUNNER
	case "hatg":
	{
		//_unit addweapon "ACE_Map_Tools";
	};	
	
// LOADOUT: HEAVY AT ASSISTANT GUNNER	
	case "hatag":
	{
		//_unit addweapon "ACE_Map_Tools";
	};	
	
// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{
		_unit addweapon "ACE_Map_Tools";
	};	
	
// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{
		_unit addweapon "ACE_Map_Tools";
	};		
	
// LOADOUT: SNIPER
	case "sn":
	{
		_unit addweapon "ACE_Map_Tools";
	};		
	
// LOADOUT: SPOTTER
	case "sp":
	{
		_unit addweapon "ACE_Map_Tools";
	};			
	
// LOADOUT: GROUND VEHICLE CREW
	case "c":
	{
		//_unit addweapon "ACE_Map_Tools";
		_success = [_unit, "ACE_Morphine", 1] call ACE_fnc_PackMagazine;
		_success = [_unit, "ACE_Epinephrine", 1] call ACE_fnc_PackMagazine;
		_success = [_unit, "ACE_Medkit", 1] call ACE_fnc_PackMagazine;
	};			
	
// LOADOUT: AIR VEHICLE PILOTS
	case "p":
	{
		//_unit addweapon "ACE_Map_Tools";
		_success = [_unit, "ACE_Morphine", 1] call ACE_fnc_PackMagazine;
		_success = [_unit, "ACE_Epinephrine", 1] call ACE_fnc_PackMagazine;
		_success = [_unit, "ACE_Medkit", 1] call ACE_fnc_PackMagazine;
	};		
	
// LOADOUT: ENGINEER
	case "eng":
	{
		//_unit addweapon "ACE_Map_Tools";
	};	
	
// DEFAULT
	default
	{
	};
	
// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};

// ====================================================================================

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING
_unit selectweapon primaryweapon _unit;
