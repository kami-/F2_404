// F2_ACE - Safe Start, Safety Toggle
// Credits: Please see the F2_ACE online manual (http://www.ferstaberinde.com/f2/en/)
//=====================================================================================
//Grab variable
_switch = _this select 0;

//Exit if server
if(isDedicated) exitwith {};

switch (_switch) do
{
	//Turn safety on
	case true:
	{
		//Delete bullets from fired weapons
		f_safety = player addEventHandler["Fired", {deletevehicle (_this select 6);}];
		
		//Make playable units invincible, clientside
		{
			_x allowdamage false;
		} foreach playableunits;
	};
	
	//Turn safety off
	case false:
	{
		//Allow shooting
		player removeeventhandler ["Fired", f_safety];
		
		//Make playable units vulnerable, clientside
		{
			_x allowdamage true;
		} foreach playableunits;
	};
};
