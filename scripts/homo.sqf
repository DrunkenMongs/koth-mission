if (!isDedicated) then {
	_flagredbase = "Flag_Red_F" createVehicle (getMarkerPos "flagspawn_red");
	sleep 0.5;
	_flagredbase setFlagTexture "gfx\flag_wop_co.paa";
	
	_flagred = "Flag_Red_F" createVehicle (getMarkerPos "flagspawn_red2");
	sleep 0.5;
	_flagred setFlagTexture "gfx\flag_wop_co.paa";
	
	_flagblubase = "Flag_Blue_F" createVehicle (getMarkerPos "flagspawn_blu");
	sleep 0.5;
	_flagblubase setFlagTexture "gfx\flag_zfg_co.paa";
	
	_flagblu = "Flag_Blue_F" createVehicle (getMarkerPos "flagspawn_blu2");
	sleep 0.5;
	_flagblu setFlagTexture "gfx\flag_zfg_co.paa";
	
	_flagindbase = "Flag_Green_F" createVehicle (getMarkerPos "flagspawn_ind");
	sleep 0.5;
	_flagindbase setFlagTexture "gfx\flag_nds_co.paa";
	
	_flagind = "Flag_Green_F" createVehicle (getMarkerPos "flagspawn_ind2");
	sleep 0.5;
	_flagind setFlagTexture "gfx\flag_nds_co.paa";
	
};