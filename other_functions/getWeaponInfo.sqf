_classname = _this;
_rank = 999;
_mag = "";
_magtr = "";

if(_classname == "muzzle_snds_L" || _classname == "muzzle_snds_acp" || _classname == "muzzle_snds_M" || _classname == "muzzle_snds_H" || _classname == "muzzle_snds_B") then
{
	_rank = 18;
	_mag = "item";
};
if(_classname == "optic_Aco") then
{
	_rank = 3;
	_mag = "item";
};
if(_classname == "optic_Arco") then
{
	_rank = 8;
	_mag = "item";
};
if(_classname == "optic_Hamr") then
{
	_rank = 8;
	_mag = "item";
};
if(_classname == "optic_Holosight") then
{
	_rank = 5;
	_mag = "item";
};
if(_classname == "optic_MRCO") then
{
	_rank = 6;
	_mag = "item";
};
if(_classname == "optic_SOS") then
{
	_rank = 10;
	_mag = "item";
};
if(_classname == "Chemlight_blue" || _classname == "Chemlight_green" || _classname == "Chemlight_red") then
{
	_rank = 6;
	_mag = "magazine";
};
if(_classname == "MiniGrenade") then
{
	_rank = 4;
	_mag = "magazine";
};
if(_classname == "HandGrenade") then
{
	_rank = 11;
	_mag = "magazine";
};
if(_classname == "SatchelCharge_Remote_Mag" || _classname == "SLAMDirectionalMine_Wire_Mag") then
{
	_rank = 21;
	_mag = "magazine";
};
if(_classname == "UGL_FlareGreen_F" || _classname == "UGL_FlareRed_F" || _classname == "1Rnd_Smoke_Grenade_shell" || _classname == "1Rnd_SmokeGreen_Grenade_shell" || _classname == "1Rnd_SmokeRed_Grenade_shell") then
{
	_rank = 12;
	_mag = "magazine";
};
if(_classname == "SmokeShell") then
{
	_rank = 3;
	_mag = "magazine";
};
if(_classname == "SmokeShellRed" || _classname == "SmokeShellGreen" || _classname == "SmokeShellBlue") then
{
	_rank = 8;
	_mag = "magazine";
};
if(_classname == "SmokeShellPurple") then
{
	_rank = 22;
	_mag = "magazine";
};
if(_classname == "FirstAidKit") then
{
	_rank = 5;
	_mag = "item";
};
if(_classname == "B_AssaultPack_blk") then
{
	_rank = 6;
	_mag = "backpack";
};
if(_classname == "B_Parachute") then
{
	_rank = 1;
	_mag = "backpack";
};
if(_classname == "U_O_GhillieSuit") then
{
	_rank = 18;
	_mag = "uniform";
};
if(_classname == "ToolKit") then
{
	_rank = 6;
	_mag = "item";
};
if(_classname == "acc_pointer_IR") then
{
	_rank = 10;
	_mag = "item";
};
if(_classname == "acc_flashlight") then
{
	_rank = 6;
	_mag = "item";
};
if(_classname == "B_UavTerminal" || _classname == "O_UavTerminal" || _classname == "I_UavTerminal") then
{
	_rank = 20;
	_mag = "assignitem";
};
if(_classname == "H_Cap_blu" || _classname == "H_Cap_oli" || _classname == "H_Cap_headphones" || _classname == "H_Cap_red") then
{
	_rank = 2;
	_mag = "assignitem";
};
if(_classname == "H_MilCap_mcamo" || _classname == "H_MilCap_ocamo") then
{
	_rank = 3;
	_mag = "assignitem";
};
if(_classname == "H_HelmetB" || _classname == "H_HelmetB_light" || _classname == "H_HelmetB_paint" || _classname == "H_HelmetB_camo" ) then
{
	_rank = 4;
	_mag = "assignitem";
};
if(_classname == "H_PilotHelmetHeli_B" || _classname == "H_PilotHelmetFighter_B") then
{
	_rank = 5;
	_mag = "assignitem";
};
if(_classname == "H_Bandanna_camo") then
{
	_rank = 6;
	_mag = "assignitem";
};
if(_classname == "H_Beret_blk") then
{
	_rank = 10;
	_mag = "assignitem";
};
if(_classname == "H_Booniehat_indp" || _classname == "H_Booniehat_tan") then
{
	_rank = 16;
	_mag = "assignitem";
};
if(_classname == "H_Cap_tan_specops_US") then
{
	_rank = 12;
	_mag = "assignitem";
};
if(_classname == "H_MilCap_oucamo") then
{
	_rank = 18;
	_mag = "assignitem";
};
if(_classname == "H_Shemag_khk") then
{
	_rank = 20;
	_mag = "assignitem";
};
if(_classname == "H_Watchcap_blk") then
{
	_rank = 14;
	_mag = "assignitem";
};
if(_classname == "Binocular") then
{
	_rank = 8;
};
if(_classname == "Rangefinder") then
{
	_rank = 18;
};



if(_classname == "arifle_Katiba_C_F") then
{
	_rank = 1;
	_mag = "30Rnd_65x39_caseless_green";
	_magtr = "30Rnd_65x39_caseless_green_mag_Tracer";
};
if(_classname == "arifle_Katiba_F") then
{
	_rank = 2;
	_mag = "30Rnd_65x39_caseless_green";
	_magtr = "30Rnd_65x39_caseless_green_mag_Tracer";
};
if(_classname == "arifle_Mk20_F") then
{
	_rank = 3;
	_mag = "30Rnd_556x45_Stanag";
	_magtr = "30Rnd_556x45_Stanag_Tracer_Red";
};
if(_classname == "arifle_MX_F") then
{
	_rank = 6;
	_mag = "30Rnd_65x39_caseless_mag";
	_magtr = "30Rnd_65x39_caseless_mag_Tracer";
};
if(_classname == "arifle_MX_GL_F") then
{
	_rank = 12;
	_mag = "30Rnd_65x39_caseless_mag";
	_magtr = "30Rnd_65x39_caseless_mag_Tracer";
};
if(_classname == "arifle_MX_SW_F") then
{
	_rank = 8;
	_mag = "100Rnd_65x39_caseless_mag";
	_magtr = "100Rnd_65x39_caseless_mag_Tracer";
};
if(_classname == "arifle_MXM_F") then
{
	_rank = 7;
	_mag = "30Rnd_65x39_caseless_mag";
	_magtr = "30Rnd_65x39_caseless_mag_Tracer";
};
if(_classname == "arifle_TRG21_F") then
{
	_rank = 4;
	_mag = "30Rnd_556x45_Stanag";
	_magtr = "30Rnd_556x45_Stanag_Tracer_Green";
};
if(_classname == "LMG_Mk200_F") then
{
	_rank = 10;
	_mag = "200Rnd_65x39_cased_Box";
	_magtr = "200Rnd_65x39_cased_Box_Tracer";
};
if(_classname == "LMG_Zafir_F") then
{
	_rank = 16;
	_mag = "150Rnd_762x51_Box";
	_magtr = "150Rnd_762x51_Box_Tracer";
};
if(_classname == "hgun_PDW2000_F") then
{
	_rank = 8;
	_mag = "30Rnd_9x21_Mag";
	_magtr = "30Rnd_9x21_Mag";
};
if(_classname == "SMG_01_F") then
{
	_rank = 4;
	_mag = "30Rnd_45ACP_Mag_SMG_01";
	_magtr = "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
};
if(_classname == "SMG_02_F") then
{
	_rank = 5;
	_mag = "30Rnd_9x21_Mag";
	_magtr = "30Rnd_9x21_Mag";
};
if(_classname == "srifle_EBR_F") then
{
	_rank = 12;
	_mag = "20Rnd_762x51_Mag";
	_magtr = "20Rnd_762x51_Mag";
};
if(_classname == "srifle_GM6_F") then
{
	_rank = 20;
	_mag = "5Rnd_127x108_Mag";
	_magtr = "5Rnd_127x108_Mag";
};
if(_classname == "srifle_LRR_F") then
{
	_rank = 18;
	_mag = "7Rnd_408_Mag";
	_magtr = "7Rnd_408_Mag";
};

if(_classname == "hgun_ACPC2_F") then
{
	_rank = 5;
	_mag = "9Rnd_45ACP_Mag";
	_magtr = "9Rnd_45ACP_Mag";
};

if(_classname == "hgun_Pistol_heavy_02_F") then
{
	_rank = 16;
	_mag = "6Rnd_45ACP_Cylinder";
	_magtr = "6Rnd_45ACP_Cylinder";
};

if(_classname == "launch_NLAW_F") then
{
	_rank = 18;
	_mag = "NLAW_F";
	_magtr = "NLAW_F";
};
if(_classname == "launch_RPG32_F") then
{
	_rank = 22;
	_mag = "RPG32_F";
	_magtr = "RPG32_F";
};

_output = [_rank,_mag,_magtr];
_output