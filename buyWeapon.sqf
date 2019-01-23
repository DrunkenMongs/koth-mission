_item = _this;
_xp = player_stats select 0;
_rankinfo = _xp call getRankInfo;
_rank = _rankinfo select 0;

if (_item == "mag") then
{
	_actweapon = currentWeapon player;
	_actinfo = _actweapon call getWeaponInfo;
	_newmag = _actinfo select 1;
	player addmagazine _newmag;
}else{
	if (_item == "magtr") then
	{
		if (_rank >= 8) then
		{
			_actweapon = currentWeapon player;
			_actinfo = _actweapon call getWeaponInfo;
			_newmag = _actinfo select 2;
			player addmagazine _newmag;
		};
	}else {
		_info = _item call getWeaponInfo;
		_mag = _info select 1;
		_neededrank = _info select 0;
		
		_xp = player_stats select 0;
		_rankinfo = _xp call getRankInfo;
		_playerrank = _rankinfo select 0;

		if (_playerrank >= _neededrank) then
		{
			if (_mag == "magazine") then
			{	
				player addmagazine _item;
			}
			else
			{
				if (_mag == "backpack") then
				{
					player addBackpack _item;
				}
				else
				{
					if (_mag == "uniform") then
					{
						player addUniform _item;
					}
					else
					{
						if (_mag == "item" || _mag == "assignitem") then
						{
							player additem _item;
							if (_mag == "assignitem") then
							{
								player assignItem _item;
							};
						}
						else
						{
							if (_item == "launch_NLAW_F" || _item == "launch_RPG32_F" || _item == "Binocular" || _item == "Rangefinder" || _item == "hgun_ACPC2_F" || _item == "hgun_Pistol_heavy_02_F") then
							{
							}
							else
							{
								_primary = primaryWeapon player;
								if(_primary != "") then
								{
									player removeWeapon _primary;
								};
							};
							player addWeapon _item;
							
							// Muzzle Fix
							firstmuzzle = {
							   private "_ma";
							   _ma = getArray (configFile >> "CfgWeapons" >> _this >> "muzzles");
							   if (_ma select 0 != "this") exitWith {_ma select 0};
							   _this
							};

							if (_item != "Binocular" && _item != "Rangefinder") then
							{
								player selectWeapon (_item call firstmuzzle);
							};
						};
					};	
				};
			};
		};
	};
};
    
