// F2_ACE - Safe Start, Server Loop
// Credits: Please see the F2_ACE online manual (http://www.ferstaberinde.com/f3/en/)
//=====================================================================================
// Timer for the mission setup
if(isServer) then
{	
	for [{_i = pv_mission_timer;},{_i > 0;},{_i = _i - 1;}] do
	{
		sleep 60;
		pv_mission_timer = pv_mission_timer - 1;
		publicVariable "pv_mission_timer";
	};
};
