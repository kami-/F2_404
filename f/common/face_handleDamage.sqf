// F2_ACE - Friendly-Fire Logger (to .rpt)
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

private["_unit", "_damage", "_sourceunit", "_ammo", "_text"];

_unit = _this select 0;
_damage = _this select 2;
_sourceunit = _this select 3;
_ammo = _this select 4;

_text = format ["T=%1 : %2 did %3 damage to %4 with %5. Side: %6", time, name _sourceunit, _damage, name _unit, _ammo, side _sourceunit];

if(side _unit == side _sourceunit && !(_unit == _sourceunit)) then {
		
	[0, {
			diag_log text _this;
		},_text] call CBA_fnc_globalExecute;

	_this select 2;
	
};
