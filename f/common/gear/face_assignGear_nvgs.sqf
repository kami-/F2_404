// F2_ACE - Assign NVGs 
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ==============================================================================

private["_option", "_side"];

_option = f_var_nightvision_goggles;
_side = side _unit;

switch (_option) do
{
// ====================================================================================

	//Default
	case 0:
	{
		//Don't modify NVGs, mission specific according to the mission maker
	};

	//Assign NVGs to everyone
	case 1:
	{
		_unit addweapon "NVGoggles";
	};

	//Remove all NVGs
	case 2:
	{
		_unit removeweapon "NVGoggles";
	};

	//BLUFOR only
	case 3:
	{
		_unit removeweapon "NVGoggles";
		if(_side == west) then {_unit addweapon "NVGoggles";};
	};

	//OPFOR only
	case 4:
	{
		_unit removeweapon "NVGoggles";
		if(_side == east) then {_unit addweapon "NVGoggles";};
	};

	// INDFOR only
	case 5:
	{
		_unit removeweapon "NVGoggles";
		if(_side == resistance) then {_unit addweapon "NVGoggles";};
	};
	// Militaries only (No Civ)
	case 6:
	{
		_unit removeweapon "NVGoggles";
		if(_side != civilian) then {_unit addweapon "NVGoggles";};
	};
};

// ==============================================================================

