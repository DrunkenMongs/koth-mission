cargobox_blu addAction [Localize "STR_DGX_SVLO", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint Localize "STR_DGX_LOSAVE";
		_gear = [player] call getAllWeapons;
		sleep 2;
		[[_gear],"saveLoadout",false,false] spawn BIS_fnc_MP;
		sleep 60;
		player_loadoutcooldown = false;
	};
}];                
cargobox_blu addAction [Localize "STR_DGX_ESVLO", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint Localize "STR_DGX_LOLOAD";
		[[_this select 1],"equipLoadout",false,false] spawn BIS_fnc_MP;
		sleep 60;
		player_loadoutcooldown = false;
	};
}];  
cargobox_red addAction [Localize "STR_DGX_SVLO", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint Localize "STR_DGX_LOSAVE";
		_gear = [player] call getAllWeapons;
		sleep 2;
		[[_gear],"saveLoadout",false,false] spawn BIS_fnc_MP;
		sleep 60;
		player_loadoutcooldown = false;
	};
}];                
cargobox_red addAction [Localize "STR_DGX_ESVLO", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint Localize "STR_DGX_LOLOAD";
		[[_this select 1],"equipLoadout",false,false] spawn BIS_fnc_MP;
		sleep 60;
		player_loadoutcooldown = false;
	};
}];
cargobox_ind addAction [Localize "STR_DGX_SVLO", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint Localize "STR_DGX_LOSAVE";
		_gear = [player] call getAllWeapons;
		sleep 2;
		[[_gear],"saveLoadout",false,false] spawn BIS_fnc_MP;
		sleep 60;
		player_loadoutcooldown = false;
	};
}];                
cargobox_ind addAction [Localize "STR_DGX_ESVLO", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint Localize "STR_DGX_LOLOAD";
		[[_this select 1],"equipLoadout",false,false] spawn BIS_fnc_MP;
		sleep 60;
		player_loadoutcooldown = false;
	};
}];
 
 
 
flagpole_blu addAction [Localize "STR_DGX_TST", {
if(typeName spawntruck_blu == "OBJECT") then
{
	_this select 1 moveincargo spawntruck_blu;
}
else{
	hint Localize "STR_DGX_TRUCKDES";
};
}];
flagpole_blu addAction [Localize "STR_DGX_SSMANUA", {
	if (!player_savecooldown) then
	{
		player_savecooldown = true;
		[[player, player_stats], "updatePlayerStats", false, false] spawn BIS_fnc_MP;
		sleep 0.5;
		hint Localize "STR_DGX_TRUCKDES";
		sleep 60;
		player_savecooldown = false;
	};
}];
flagpole_red addAction [Localize "STR_DGX_TST", {
if(typeName spawntruck_red == "OBJECT") then
{
	_this select 1 moveincargo spawntruck_red;
}
else{
	hint Localize "STR_DGX_TRUCKDES";
};
}];
flagpole_red addAction [Localize "STR_DGX_SSMANUA", {
	if (!player_savecooldown) then
	{
		player_savecooldown = true;
		[[player, player_stats], "updatePlayerStats", false, false] spawn BIS_fnc_MP;
		sleep 0.5;
		hint Localize "STR_DGX_TRUCKDES";
		sleep 60;
		player_savecooldown = false;
	};
}];
flagpole_ind addAction [Localize "STR_DGX_TST", {
if(typeName spawntruck_ind == "OBJECT") then
{
	_this select 1 moveincargo spawntruck_ind;
}
else{
	hint Localize "STR_DGX_TRUCKDES";
};
}];
flagpole_ind addAction [Localize "STR_DGX_SSMANUA", {
	if (!player_savecooldown) then
	{
		player_savecooldown = true;
		[[player, player_stats], "updatePlayerStats", false, false] spawn BIS_fnc_MP;
		sleep 0.5;
		hint Localize "STR_DGX_TRUCKDES";
		sleep 60;
		player_savecooldown = false;
	};
}];

	
	
	trader_weapons_blu addAction [Localize "STR_DGX_WPN1", {"arifle_Katiba_C_F" execVM "buyWeapon.sqf"}]; 
	trader_weapons_blu addAction [Localize "STR_DGX_WPN2", {"arifle_Katiba_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction [Localize "STR_DGX_WPN3", {"arifle_Mk20_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction [Localize "STR_DGX_WPN4", {"arifle_TRG21_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction [Localize "STR_DGX_WPN5", {"SMG_01_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction [Localize "STR_DGX_WPN6", {"SMG_02_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction [Localize "STR_DGX_WPN7", {"arifle_MX_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction [Localize "STR_DGX_WPN8", {"arifle_MX_GL_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction [Localize "STR_DGX_WPN9", {"arifle_MXM_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction [Localize "STR_DGX_WPN10", {"hgun_PDW2000_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction [Localize "STR_DGX_WPN11", {"arifle_MX_SW_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction [Localize "STR_DGX_WPN12", {"LMG_Mk200_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction [Localize "STR_DGX_WPN13", {"srifle_EBR_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction [Localize "STR_DGX_WPN14", {"LMG_Zafir_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction [Localize "STR_DGX_WPN15", {"srifle_LRR_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction [Localize "STR_DGX_WPN16", {"srifle_GM6_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction [Localize "STR_DGX_WPN17", {"hgun_ACPC2_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction [Localize "STR_DGX_WPN18", {"hgun_Pistol_heavy_02_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction [Localize "STR_DGX_WPN19", {"launch_NLAW_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction [Localize "STR_DGX_WPN20", {"launch_RPG32_F" execVM "buyWeapon.sqf"}];
	
	trader_items_blu addAction [Localize "STR_DGX_SMK1", {"SmokeShell" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction [Localize "STR_DGX_SMK2", {"SmokeShellRed" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction [Localize "STR_DGX_SMK3", {"SmokeShellGreen" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction [Localize "STR_DGX_SMK4", {"SmokeShellBlue" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction [Localize "STR_DGX_SMK5", {"SmokeShellPurple" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction [Localize "STR_DGX_ITEM1", {"B_AssaultPack_blk" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction [Localize "STR_DGX_ITEM2", {"B_Parachute" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction [Localize "STR_DGX_ITEM3", {"FirstAidKit" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction [Localize "STR_DGX_ITEM4", {"ToolKit" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction [Localize "STR_DGX_ITEM5", {"Binocular" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction [Localize "STR_DGX_ITEM6", {"Rangefinder" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction [Localize "STR_DGX_ITEM7", {"B_UavTerminal" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction [Localize "STR_DGX_ITEM8", {"UGL_FlareGreen_F" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction [Localize "STR_DGX_ITEM9", {"UGL_FlareRed_F" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction [Localize "STR_DGX_ITEM10", {"1Rnd_Smoke_Grenade_shell" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction [Localize "STR_DGX_ITEM11", {"1Rnd_SmokeGreen_Grenade_shell" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction [Localize "STR_DGX_ITEM12", {"1Rnd_SmokeRed_Grenade_shell" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction [Localize "STR_DGX_ITEM13", {"Chemlight_blue" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction [Localize "STR_DGX_ITEM14", {"Chemlight_green" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction [Localize "STR_DGX_ITEM15", {"Chemlight_red" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction [Localize "STR_DGX_ITEM16", {"MiniGrenade" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction [Localize "STR_DGX_ITEM17", {"HandGrenade" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction [Localize "STR_DGX_ITEM18", {"SatchelCharge_Remote_Mag" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction [Localize "STR_DGX_ITEM19", {"SLAMDirectionalMine_Wire_Mag" execVM "buyWeapon.sqf"}];
	
	trader_mags_blu addAction [Localize "STR_DGX_MAG1", {"mag" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction [Localize "STR_DGX_MAG2", {"magtr" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction [Localize "STR_DGX_OP1", {"optic_Aco" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction [Localize "STR_DGX_OP2", {"optic_Holosight" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction [Localize "STR_DGX_OP3", {"optic_MRCO" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction [Localize "STR_DGX_OP4", {"optic_Arco" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction [Localize "STR_DGX_OP5", {"optic_Hamr" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction [Localize "STR_DGX_OP6", {"optic_SOS" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction [Localize "STR_DGX_SUPR1", {"muzzle_snds_L" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction [Localize "STR_DGX_SUPR2", {"muzzle_snds_acp" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction [Localize "STR_DGX_SUPR3", {"muzzle_snds_M" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction [Localize "STR_DGX_SUPR4", {"muzzle_snds_H" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction [Localize "STR_DGX_SUPR5", {"muzzle_snds_B" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction [Localize "STR_DGX_LASER", {"acc_pointer_IR" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction [Localize "STR_DGX_FL", {"acc_flashlight" execVM "buyWeapon.sqf"}];
	
	trader_clothes_blu addAction [Localize "STR_DGX_CLOTH1", {"U_O_GhillieSuit" execVM "buyWeapon.sqf"}];
	trader_clothes_blu addAction [Localize "STR_DGX_CLOTH2", {"H_Bandanna_camo" execVM "buyWeapon.sqf"}];
	trader_clothes_blu addAction [Localize "STR_DGX_CLOTH3", {"H_Beret_blk" execVM "buyWeapon.sqf"}];
	trader_clothes_blu addAction [Localize "STR_DGX_CLOTH4", {"H_Cap_tan_specops_US" execVM "buyWeapon.sqf"}];
	trader_clothes_blu addAction [Localize "STR_DGX_CLOTH5", {"H_Watchcap_blk" execVM "buyWeapon.sqf"}];
	trader_clothes_blu addAction [Localize "STR_DGX_CLOTH6", {"H_Booniehat_indp" execVM "buyWeapon.sqf"}];
	trader_clothes_blu addAction [Localize "STR_DGX_CLOTH7", {"H_Booniehat_tan" execVM "buyWeapon.sqf"}];
	trader_clothes_blu addAction [Localize "STR_DGX_CLOTH8", {"H_MilCap_oucamo" execVM "buyWeapon.sqf"}];
	trader_clothes_blu addAction [Localize "STR_DGX_CLOTH9", {"H_Shemag_khk" execVM "buyWeapon.sqf"}];
	trader_clothes_blu addAction [Localize "STR_DGX_CLOTH10", {"H_Cap_blu" execVM "buyWeapon.sqf"}];
	trader_clothes_blu addAction [Localize "STR_DGX_CLOTH11", {"H_Cap_oli" execVM "buyWeapon.sqf"}];
	trader_clothes_blu addAction [Localize "STR_DGX_CLOTH12", {"H_Cap_red" execVM "buyWeapon.sqf"}];
	trader_clothes_blu addAction [Localize "STR_DGX_CLOTH13", {"H_Cap_headphones" execVM "buyWeapon.sqf"}];
	trader_clothes_blu addAction [Localize "STR_DGX_CLOTH14", {"H_MilCap_mcamo" execVM "buyWeapon.sqf"}];
	trader_clothes_blu addAction [Localize "STR_DGX_CLOTH15", {"H_MilCap_ocamo" execVM "buyWeapon.sqf"}];
	
	
	trader_cars_blu addAction [Localize "STR_DGX_VEH1", {
	if (!player_vcooldown) then
	{
		player_vcooldown = true;
		_veh = "B_Quadbike_01_F" createVehicle (getMarkerPos "vspawn_blu");
		_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
		[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
		sleep 360;
		player_vcooldown = false;
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_blu addAction [Localize "STR_DGX_VEH2", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 12) then
		{
			player_vcooldown = true;
			_veh = "B_MRAP_01_F" createVehicle (getMarkerPos "vspawn_blu");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_blu addAction [Localize "STR_DGX_VEH3", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 14) then
		{
			player_vcooldown = true;
			_veh = "B_Heli_Light_01_F" createVehicle (getMarkerPos "vspawn_blu");
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_blu addAction [Localize "STR_DGX_VEH4", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
			player_vcooldown = true;
			_veh = "B_G_Offroad_01_armed_F" createVehicle (getMarkerPos "vspawn_blu");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.75;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_blu addAction [Localize "STR_DGX_VEH5", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 22) then
		{
			player_vcooldown = true;
			_veh = "B_Heli_Transport_01_F" createVehicle (getMarkerPos "vspawn_blu");
			_veh setVehicleAmmo 0;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_blu addAction [Localize "STR_DGX_VEH6", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 24) then
		{
			player_vcooldown = true;
			_veh = "B_MRAP_01_hmg_F" createVehicle (getMarkerPos "vspawn_blu");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.5;
			_veh disableTIEquipment true;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_blu addAction [Localize "STR_DGX_BLUVEH7", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 26) then
		{
			player_vcooldown = true;
			_veh = "B_Truck_01_transport_F" createVehicle (getMarkerPos "vspawn_blu");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_blu addAction [Localize "STR_DGX_VEH8", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 28) then
		{
			player_vcooldown = true;
			_veh = "B_Truck_01_fuel_F" createVehicle (getMarkerPos "vspawn_blu");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_blu addAction [Localize "STR_DGX_VEH9", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 30) then
		{
			player_vcooldown = true;
			_veh = "B_Truck_01_ammo_F" createVehicle (getMarkerPos "vspawn_blu");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh disableTIEquipment true;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_blu addAction [Localize "STR_DGX_VEH10", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 32) then
		{
			player_vcooldown = true;
			_veh = "B_Heli_Light_01_armed_F" createVehicle (getMarkerPos "vspawn_blu");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.5;
			_veh disableTIEquipment true;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_blu addAction [Localize "STR_DGX_VEH11", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 34) then
		{
			player_vcooldown = true;
			_veh = "B_Heli_Transport_01_camo_F" createVehicle (getMarkerPos "vspawn_blu");
			_veh setVehicleAmmo 0.4;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_blu addAction [Localize "STR_DGX_VEH13", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 40) then
		{
			player_vcooldown = true;
			_veh = "B_APC_Tracked_01_rcws_F" createVehicle (getMarkerPos "vspawn_blu");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.5;
			_veh disableTIEquipment true;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_blu addAction [Localize "STR_DGX_VEH12", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
			player_vcooldown = true;
			_veh = createVehicle ["B_UAV_01_F", getMarkerPos "vspawn_blu", [], 0,""];  
			createVehicleCrew _veh;  
			_veh disableTIEquipment true;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];

	trader_cars_blu addAction [Localize "STR_DGX_VEH14", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 45) then
		{
			player_vcooldown = true;
			_veh = "B_APC_Wheeled_01_cannon_F" createVehicle (getMarkerPos "vspawn_blu");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.5;
			_veh disableTIEquipment true;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];	
	trader_cars_blu addAction [Localize "STR_DGX_VEH15", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 50) then
		{
			player_vcooldown = true;
			_veh = "B_MBT_01_TUSK_F" createVehicle (getMarkerPos "vspawn_blu");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.5;
			_veh disableTIEquipment true;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];	
	
	//dgx
	trader_center addAction [Localize "STR_DGX_MAG1", {"mag" execVM "buyWeapon.sqf"}];
	trader_center addAction [Localize "STR_DGX_MAG2", {"magtr" execVM "buyWeapon.sqf"}];
	//end
	
	trader_weapons_red addAction [Localize "STR_DGX_WPN1", {"arifle_Katiba_C_F" execVM "buyWeapon.sqf"}]; 
	trader_weapons_red addAction [Localize "STR_DGX_WPN2", {"arifle_Katiba_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction [Localize "STR_DGX_WPN3", {"arifle_Mk20_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction [Localize "STR_DGX_WPN4", {"arifle_TRG21_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction [Localize "STR_DGX_WPN5", {"SMG_01_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction [Localize "STR_DGX_WPN6", {"SMG_02_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction [Localize "STR_DGX_WPN7", {"arifle_MX_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction [Localize "STR_DGX_WPN8", {"arifle_MX_GL_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction [Localize "STR_DGX_WPN9", {"arifle_MXM_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction [Localize "STR_DGX_WPN10", {"hgun_PDW2000_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction [Localize "STR_DGX_WPN11", {"arifle_MX_SW_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction [Localize "STR_DGX_WPN12", {"LMG_Mk200_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction [Localize "STR_DGX_WPN13", {"srifle_EBR_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction [Localize "STR_DGX_WPN14", {"LMG_Zafir_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction [Localize "STR_DGX_WPN15", {"srifle_LRR_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction [Localize "STR_DGX_WPN16", {"srifle_GM6_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction [Localize "STR_DGX_WPN17", {"hgun_ACPC2_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction [Localize "STR_DGX_WPN18", {"hgun_Pistol_heavy_02_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction [Localize "STR_DGX_WPN19", {"launch_NLAW_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction [Localize "STR_DGX_WPN20", {"launch_RPG32_F" execVM "buyWeapon.sqf"}];
	
	trader_items_red addAction [Localize "STR_DGX_SMK1", {"SmokeShell" execVM "buyWeapon.sqf"}];
	trader_items_red addAction [Localize "STR_DGX_SMK2", {"SmokeShellRed" execVM "buyWeapon.sqf"}];
	trader_items_red addAction [Localize "STR_DGX_SMK3", {"SmokeShellGreen" execVM "buyWeapon.sqf"}];
	trader_items_red addAction [Localize "STR_DGX_SMK4", {"SmokeShellBlue" execVM "buyWeapon.sqf"}];
	trader_items_red addAction [Localize "STR_DGX_SMK5", {"SmokeShellPurple" execVM "buyWeapon.sqf"}];
	trader_items_red addAction [Localize "STR_DGX_ITEM1", {"B_AssaultPack_blk" execVM "buyWeapon.sqf"}];
	trader_items_red addAction [Localize "STR_DGX_ITEM2", {"B_Parachute" execVM "buyWeapon.sqf"}];
	trader_items_red addAction [Localize "STR_DGX_ITEM3", {"FirstAidKit" execVM "buyWeapon.sqf"}];
	trader_items_red addAction [Localize "STR_DGX_ITEM4", {"ToolKit" execVM "buyWeapon.sqf"}];
	trader_items_red addAction [Localize "STR_DGX_ITEM5", {"Binocular" execVM "buyWeapon.sqf"}];
	trader_items_red addAction [Localize "STR_DGX_ITEM6", {"Rangefinder" execVM "buyWeapon.sqf"}];
	trader_items_red addAction [Localize "STR_DGX_ITEM7", {"O_UavTerminal" execVM "buyWeapon.sqf"}];
	trader_items_red addAction [Localize "STR_DGX_ITEM8", {"UGL_FlareGreen_F" execVM "buyWeapon.sqf"}];
	trader_items_red addAction [Localize "STR_DGX_ITEM9", {"UGL_FlareRed_F" execVM "buyWeapon.sqf"}];
	trader_items_red addAction [Localize "STR_DGX_ITEM10", {"1Rnd_Smoke_Grenade_shell" execVM "buyWeapon.sqf"}];
	trader_items_red addAction [Localize "STR_DGX_ITEM11", {"1Rnd_SmokeGreen_Grenade_shell" execVM "buyWeapon.sqf"}];
	trader_items_red addAction [Localize "STR_DGX_ITEM12", {"1Rnd_SmokeRed_Grenade_shell" execVM "buyWeapon.sqf"}];
	trader_items_red addAction [Localize "STR_DGX_ITEM13", {"Chemlight_blue" execVM "buyWeapon.sqf"}];
	trader_items_red addAction [Localize "STR_DGX_ITEM14", {"Chemlight_green" execVM "buyWeapon.sqf"}];
	trader_items_red addAction [Localize "STR_DGX_ITEM15", {"Chemlight_red" execVM "buyWeapon.sqf"}];
	trader_items_red addAction [Localize "STR_DGX_ITEM16", {"MiniGrenade" execVM "buyWeapon.sqf"}];
	trader_items_red addAction [Localize "STR_DGX_ITEM17", {"HandGrenade" execVM "buyWeapon.sqf"}];
	trader_items_red addAction [Localize "STR_DGX_ITEM18", {"SatchelCharge_Remote_Mag" execVM "buyWeapon.sqf"}];
	trader_items_red addAction [Localize "STR_DGX_ITEM19", {"SLAMDirectionalMine_Wire_Mag" execVM "buyWeapon.sqf"}];
	
	trader_mags_red addAction [Localize "STR_DGX_MAG1", {"mag" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction [Localize "STR_DGX_MAG2", {"magtr" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction [Localize "STR_DGX_OP1", {"optic_Aco" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction [Localize "STR_DGX_OP2", {"optic_Holosight" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction [Localize "STR_DGX_OP3", {"optic_MRCO" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction [Localize "STR_DGX_OP4", {"optic_Arco" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction [Localize "STR_DGX_OP5", {"optic_Hamr" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction [Localize "STR_DGX_OP6", {"optic_SOS" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction [Localize "STR_DGX_SUPR1", {"muzzle_snds_L" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction [Localize "STR_DGX_SUPR2", {"muzzle_snds_acp" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction [Localize "STR_DGX_SUPR3", {"muzzle_snds_M" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction [Localize "STR_DGX_SUPR4", {"muzzle_snds_H" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction [Localize "STR_DGX_SUPR5", {"muzzle_snds_B" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction [Localize "STR_DGX_LASER", {"acc_pointer_IR" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction [Localize "STR_DGX_FL", {"acc_flashlight" execVM "buyWeapon.sqf"}];
	
	trader_clothes_red addAction [Localize "STR_DGX_CLOTH1", {"U_O_GhillieSuit" execVM "buyWeapon.sqf"}];
	trader_clothes_red addAction [Localize "STR_DGX_CLOTH2", {"H_Bandanna_camo" execVM "buyWeapon.sqf"}];
	trader_clothes_red addAction [Localize "STR_DGX_CLOTH3", {"H_Beret_blk" execVM "buyWeapon.sqf"}];
	trader_clothes_red addAction [Localize "STR_DGX_CLOTH4", {"H_Cap_tan_specops_US" execVM "buyWeapon.sqf"}];
	trader_clothes_red addAction [Localize "STR_DGX_CLOTH5", {"H_Watchcap_blk" execVM "buyWeapon.sqf"}];
	trader_clothes_red addAction [Localize "STR_DGX_CLOTH6", {"H_Booniehat_indp" execVM "buyWeapon.sqf"}];
	trader_clothes_red addAction [Localize "STR_DGX_CLOTH7", {"H_Booniehat_tan" execVM "buyWeapon.sqf"}];
	trader_clothes_red addAction [Localize "STR_DGX_CLOTH8", {"H_MilCap_oucamo" execVM "buyWeapon.sqf"}];
	trader_clothes_red addAction [Localize "STR_DGX_CLOTH9", {"H_Shemag_khk" execVM "buyWeapon.sqf"}];
	trader_clothes_red addAction [Localize "STR_DGX_CLOTH10", {"H_Cap_blu" execVM "buyWeapon.sqf"}];
	trader_clothes_red addAction [Localize "STR_DGX_CLOTH11", {"H_Cap_oli" execVM "buyWeapon.sqf"}];
	trader_clothes_red addAction [Localize "STR_DGX_CLOTH12", {"H_Cap_red" execVM "buyWeapon.sqf"}];
	trader_clothes_red addAction [Localize "STR_DGX_CLOTH13", {"H_Cap_headphones" execVM "buyWeapon.sqf"}];
	trader_clothes_red addAction [Localize "STR_DGX_CLOTH14", {"H_MilCap_mcamo" execVM "buyWeapon.sqf"}];
	trader_clothes_red addAction [Localize "STR_DGX_CLOTH15", {"H_MilCap_ocamo" execVM "buyWeapon.sqf"}];
	
	
	trader_cars_red addAction [Localize "STR_DGX_VEH1", {
	if (!player_vcooldown) then
	{
		player_vcooldown = true;
		_veh = "O_Quadbike_01_F" createVehicle (getMarkerPos "vspawn_red");
		sleep 0.5;
		_veh setObjectTextureGlobal[0,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
		_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
		[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
		sleep 360;
		player_vcooldown = false;
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_red addAction [Localize "STR_DGX_EASTVEH2", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 12) then
		{
			player_vcooldown = true;
			_veh = "O_MRAP_02_F" createVehicle (getMarkerPos "vspawn_red");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setObjectTextureGlobal[0,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_red addAction [Localize "STR_DGX_VEH3", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 14) then
		{
			player_vcooldown = true;
			_veh = "B_Heli_Light_01_F" createVehicle (getMarkerPos "vspawn_red");
			sleep 0.5;
			_veh setObjectTexture [0,"gfx\LittleBird.paa"];
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_red addAction [Localize "STR_DGX_VEH4", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
			player_vcooldown = true;
			_veh = "O_G_Offroad_01_armed_F" createVehicle (getMarkerPos "vspawn_red");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.75;
			_veh setObjectTextureGlobal[0,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh setObjectTextureGlobal [2,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_red addAction [Localize "STR_DGX_VEH5", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 22) then
		{
			player_vcooldown = true;
			_veh = "B_Heli_Transport_01_F" createVehicle (getMarkerPos "vspawn_red");
			_veh setVehicleAmmo 0;
			sleep 0.5;
			_veh setObjectTextureGlobal[0,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh setObjectTextureGlobal [1,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh setObjectTextureGlobal [2,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_red addAction [Localize "STR_DGX_EASTVEH6", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 24) then
		{
			player_vcooldown = true;
			_veh = "O_MRAP_02_hmg_F" createVehicle (getMarkerPos "vspawn_red");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.5;
			_veh disableTIEquipment true;
			_veh setObjectTextureGlobal[0,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh setObjectTextureGlobal [2,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_red addAction [Localize "STR_DGX_VEH7", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 26) then
		{
			player_vcooldown = true;
			_veh = "O_Truck_02_transport_F" createVehicle (getMarkerPos "vspawn_red");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setObjectTextureGlobal[0,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh setObjectTextureGlobal [1,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh setObjectTextureGlobal [2,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_red addAction [Localize "STR_DGX_VEH8", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 28) then
		{
			player_vcooldown = true;
			_veh = "O_Truck_02_fuel_F" createVehicle (getMarkerPos "vspawn_red");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setObjectTextureGlobal[0,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh setObjectTextureGlobal [1,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh setObjectTextureGlobal [2,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_red addAction [Localize "STR_DGX_VEH9", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 30) then
		{
			player_vcooldown = true;
			_veh = "O_Truck_02_Ammo" createVehicle (getMarkerPos "vspawn_red");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setObjectTextureGlobal[0,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh setObjectTextureGlobal [1,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh setObjectTextureGlobal [2,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh disableTIEquipment true;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_red addAction [Localize "STR_DGX_VEH10", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 32) then
		{
			player_vcooldown = true;
			_veh = "B_Heli_Light_01_armed_F" createVehicle (getMarkerPos "vspawn_red");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.5;
			_veh disableTIEquipment true;
			_veh setObjectTextureGlobal[0,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh setObjectTextureGlobal [1,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh setObjectTextureGlobal [2,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_red addAction [Localize "STR_DGX_VEH11", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 34) then
		{
			player_vcooldown = true;
			_veh = "B_Heli_Transport_01_camo_F" createVehicle (getMarkerPos "vspawn_red");
			_veh setVehicleAmmo 0.4;
			sleep 0.5;
			_veh setObjectTextureGlobal[0,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh setObjectTextureGlobal [1,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh setObjectTextureGlobal [2,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_red addAction [Localize "STR_DGX_OPVEH13", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 40) then
		{
			player_vcooldown = true;
			_veh = "O_APC_Tracked_02_cannon_F" createVehicle (getMarkerPos "vspawn_red");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.5;
			_veh disableTIEquipment true;
			_veh setObjectTextureGlobal[0,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh setObjectTextureGlobal [1,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh setObjectTextureGlobal [2,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	
	trader_cars_red addAction [Localize "STR_DGX_VEH12", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
			player_vcooldown = true;
			_veh = createVehicle ["O_UAV_01_F", getMarkerPos "vspawn_red", [], 0,""];  
			createVehicleCrew _veh;  
			_veh disableTIEquipment true;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_red addAction [Localize "STR_DGX_VEH14", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 45) then
		{
			player_vcooldown = true;
			_veh = "B_APC_Wheeled_01_cannon_F" createVehicle (getMarkerPos "vspawn_red");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.5;
			_veh disableTIEquipment true;
			_veh setObjectTextureGlobal[0,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh setObjectTextureGlobal [2,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];	
	trader_cars_red addAction [Localize "STR_DGX_VEH15", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 50) then
		{
			player_vcooldown = true;
			_veh = "B_MBT_01_TUSK_F" createVehicle (getMarkerPos "vspawn_red");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.5;
			_veh disableTIEquipment true;
			_veh setObjectTextureGlobal[0,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh setObjectTextureGlobal [1,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh setObjectTextureGlobal [2,"#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"];
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];	
	
	
	trader_weapons_ind addAction [Localize "STR_DGX_WPN1", {"arifle_Katiba_C_F" execVM "buyWeapon.sqf"}]; 
	trader_weapons_ind addAction [Localize "STR_DGX_WPN2", {"arifle_Katiba_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction [Localize "STR_DGX_WPN3", {"arifle_Mk20_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction [Localize "STR_DGX_WPN4", {"arifle_TRG21_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction [Localize "STR_DGX_WPN5", {"SMG_01_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction [Localize "STR_DGX_WPN6", {"SMG_02_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction [Localize "STR_DGX_WPN7", {"arifle_MX_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction [Localize "STR_DGX_WPN8", {"arifle_MX_GL_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction [Localize "STR_DGX_WPN9", {"arifle_MXM_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction [Localize "STR_DGX_WPN10", {"hgun_PDW2000_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction [Localize "STR_DGX_WPN11", {"arifle_MX_SW_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction [Localize "STR_DGX_WPN12", {"LMG_Mk200_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction [Localize "STR_DGX_WPN13", {"srifle_EBR_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction [Localize "STR_DGX_WPN14", {"LMG_Zafir_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction [Localize "STR_DGX_WPN15", {"srifle_LRR_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction [Localize "STR_DGX_WPN16", {"srifle_GM6_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction [Localize "STR_DGX_WPN17", {"hgun_ACPC2_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction [Localize "STR_DGX_WPN18", {"hgun_Pistol_heavy_02_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction [Localize "STR_DGX_WPN19", {"launch_NLAW_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction [Localize "STR_DGX_WPN20", {"launch_RPG32_F" execVM "buyWeapon.sqf"}];
	
	trader_items_ind addAction [Localize "STR_DGX_SMK1", {"SmokeShell" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction [Localize "STR_DGX_SMK2", {"SmokeShellRed" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction [Localize "STR_DGX_SMK3", {"SmokeShellGreen" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction [Localize "STR_DGX_SMK4", {"SmokeShellBlue" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction [Localize "STR_DGX_SMK5", {"SmokeShellPurple" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction [Localize "STR_DGX_ITEM1", {"B_AssaultPack_blk" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction [Localize "STR_DGX_ITEM2", {"B_Parachute" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction [Localize "STR_DGX_ITEM3", {"FirstAidKit" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction [Localize "STR_DGX_ITEM4", {"ToolKit" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction [Localize "STR_DGX_ITEM5", {"Binocular" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction [Localize "STR_DGX_ITEM6", {"Rangefinder" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction [Localize "STR_DGX_ITEM7", {"I_UavTerminal" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction [Localize "STR_DGX_ITEM8", {"UGL_FlareGreen_F" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction [Localize "STR_DGX_ITEM9", {"UGL_FlareRed_F" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction [Localize "STR_DGX_ITEM10", {"1Rnd_Smoke_Grenade_shell" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction [Localize "STR_DGX_ITEM11", {"1Rnd_SmokeGreen_Grenade_shell" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction [Localize "STR_DGX_ITEM12", {"1Rnd_SmokeRed_Grenade_shell" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction [Localize "STR_DGX_ITEM13", {"Chemlight_blue" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction [Localize "STR_DGX_ITEM14", {"Chemlight_green" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction [Localize "STR_DGX_ITEM15", {"Chemlight_red" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction [Localize "STR_DGX_ITEM16", {"MiniGrenade" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction [Localize "STR_DGX_ITEM17", {"HandGrenade" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction [Localize "STR_DGX_ITEM18", {"SatchelCharge_Remote_Mag" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction [Localize "STR_DGX_ITEM19", {"SLAMDirectionalMine_Wire_Mag" execVM "buyWeapon.sqf"}];
	
	trader_mags_ind addAction [Localize "STR_DGX_MAG1", {"mag" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction [Localize "STR_DGX_MAG2", {"magtr" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction [Localize "STR_DGX_OP1", {"optic_Aco" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction [Localize "STR_DGX_OP2", {"optic_Holosight" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction [Localize "STR_DGX_OP3", {"optic_MRCO" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction [Localize "STR_DGX_OP4", {"optic_Arco" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction [Localize "STR_DGX_OP5", {"optic_Hamr" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction [Localize "STR_DGX_OP6", {"optic_SOS" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction [Localize "STR_DGX_SUPR1", {"muzzle_snds_L" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction [Localize "STR_DGX_SUPR2", {"muzzle_snds_acp" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction [Localize "STR_DGX_SUPR3", {"muzzle_snds_M" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction [Localize "STR_DGX_SUPR4", {"muzzle_snds_H" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction [Localize "STR_DGX_SUPR5", {"muzzle_snds_B" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction [Localize "STR_DGX_LASER", {"acc_pointer_IR" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction [Localize "STR_DGX_FL", {"acc_flashlight" execVM "buyWeapon.sqf"}];
	
	trader_clothes_ind addAction [Localize "STR_DGX_CLOTH1", {"U_O_GhillieSuit" execVM "buyWeapon.sqf"}];
	trader_clothes_ind addAction [Localize "STR_DGX_CLOTH2", {"H_Bandanna_camo" execVM "buyWeapon.sqf"}];
	trader_clothes_ind addAction [Localize "STR_DGX_CLOTH3", {"H_Beret_blk" execVM "buyWeapon.sqf"}];
	trader_clothes_ind addAction [Localize "STR_DGX_CLOTH4", {"H_Cap_tan_specops_US" execVM "buyWeapon.sqf"}];
	trader_clothes_ind addAction [Localize "STR_DGX_CLOTH5", {"H_Watchcap_blk" execVM "buyWeapon.sqf"}];
	trader_clothes_ind addAction [Localize "STR_DGX_CLOTH6", {"H_Booniehat_indp" execVM "buyWeapon.sqf"}];
	trader_clothes_ind addAction [Localize "STR_DGX_CLOTH7", {"H_Booniehat_tan" execVM "buyWeapon.sqf"}];
	trader_clothes_ind addAction [Localize "STR_DGX_CLOTH8", {"H_MilCap_oucamo" execVM "buyWeapon.sqf"}];
	trader_clothes_ind addAction [Localize "STR_DGX_CLOTH9", {"H_Shemag_khk" execVM "buyWeapon.sqf"}];
	trader_clothes_ind addAction [Localize "STR_DGX_CLOTH10", {"H_Cap_blu" execVM "buyWeapon.sqf"}];
	trader_clothes_ind addAction [Localize "STR_DGX_CLOTH11", {"H_Cap_oli" execVM "buyWeapon.sqf"}];
	trader_clothes_ind addAction [Localize "STR_DGX_CLOTH12", {"H_Cap_red" execVM "buyWeapon.sqf"}];
	trader_clothes_ind addAction [Localize "STR_DGX_CLOTH13", {"H_Cap_headphones" execVM "buyWeapon.sqf"}];
	trader_clothes_ind addAction [Localize "STR_DGX_CLOTH14", {"H_MilCap_mcamo" execVM "buyWeapon.sqf"}];
	trader_clothes_ind addAction [Localize "STR_DGX_CLOTH15", {"H_MilCap_ocamo" execVM "buyWeapon.sqf"}];
	
	
	trader_cars_ind addAction [Localize "STR_DGX_VEH1", {
	if (!player_vcooldown) then
	{
		player_vcooldown = true;
		_veh = "I_Quadbike_01_F" createVehicle (getMarkerPos "vspawn_ind");
		_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
		[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
		sleep 360;
		player_vcooldown = false;
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_ind addAction [Localize "STR_DGX_GUERVEH2", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 12) then
		{
			player_vcooldown = true;
			_veh = "I_MRAP_03_F" createVehicle (getMarkerPos "vspawn_ind");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_ind addAction [Localize "STR_DGX_GUERVEH3", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 14) then
		{
			player_vcooldown = true;
			_veh = "I_Heli_light_03_unarmed_F" createVehicle (getMarkerPos "vspawn_ind");
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_ind addAction [Localize "STR_DGX_VEH4", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
			player_vcooldown = true;
			_veh = "I_G_Offroad_01_armed_F" createVehicle (getMarkerPos "vspawn_ind");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.75;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_ind addAction [Localize "STR_DGX_VEH5", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 22) then
		{
			player_vcooldown = true;
			_veh = "B_Heli_Transport_01_F" createVehicle (getMarkerPos "vspawn_ind");
			_veh setVehicleAmmo 0;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_ind addAction [Localize "STR_DGX_GUERVEH6", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 24) then
		{
			player_vcooldown = true;
			_veh = "I_MRAP_03_hmg_F" createVehicle (getMarkerPos "vspawn_ind");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.5;
			_veh disableTIEquipment true;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_ind addAction [Localize "STR_DGX_VEH7", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 26) then
		{
			player_vcooldown = true;
			_veh = "I_Truck_02_transport_F" createVehicle (getMarkerPos "vspawn_ind");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_ind addAction [Localize "STR_DGX_VEH8", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 28) then
		{
			player_vcooldown = true;
			_veh = "I_Truck_02_fuel_F" createVehicle (getMarkerPos "vspawn_ind");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_ind addAction [Localize "STR_DGX_VEH9", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 30) then
		{
			player_vcooldown = true;
			_veh = "I_Truck_02_ammo_F" createVehicle (getMarkerPos "vspawn_ind");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh disableTIEquipment true;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_ind addAction [Localize "STR_DGX_GUERVEH10", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 32) then
		{
			player_vcooldown = true;
			_veh = "I_Heli_light_03_F" createVehicle (getMarkerPos "vspawn_ind");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.5;
			_veh disableTIEquipment true;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_ind addAction [Localize "STR_DGX_VEH11", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 34) then
		{
			player_vcooldown = true;
			_veh = "B_Heli_Transport_01_camo_F" createVehicle (getMarkerPos "vspawn_ind");
			_veh setVehicleAmmo 0.4;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];

	trader_cars_ind addAction [Localize "STR_DGX_GUERVEH13", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 40) then
		{
			player_vcooldown = true;
			_veh = "I_APC_tracked_03_cannon_F" createVehicle (getMarkerPos "vspawn_ind");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.5;
			_veh disableTIEquipment true;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	
	trader_cars_ind addAction [Localize "STR_DGX_VEH12", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
			player_vcooldown = true;
			_veh = createVehicle ["I_UAV_01_F", getMarkerPos "vspawn_ind", [], 0,""];  
			createVehicleCrew _veh;  
			_veh disableTIEquipment true;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];
	trader_cars_ind addAction [Localize "STR_DGX_GUERVEH14", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 45) then
		{
			player_vcooldown = true;
			_veh = "I_APC_Wheeled_03_cannon_F" createVehicle (getMarkerPos "vspawn_ind");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.5;
			_veh disableTIEquipment true;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];	
	trader_cars_ind addAction [Localize "STR_DGX_GUERVEH15", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 50) then
		{
			player_vcooldown = true;
			_veh = "I_MBT_03_cannon_F" createVehicle (getMarkerPos "vspawn_ind");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.5;
			_veh disableTIEquipment true;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint Localize "STR_DGX_COOLDWN";};
	}];	