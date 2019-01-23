if (isServer) then 
{
	_unit = _this select 0;
	_uid = getPlayerUID _unit;

		_query = format ["SELECT uid, ammo, weapons, items, assignitems, headgear, goggles, vest, vestitems, uniform, uniformitems, backpack, packitems, handgunitems, primarywep, 
							secondarywep FROM player WHERE uid = '%1'", _uid];

							
		while{!isNil("serverRunningQuery") && serverRunningQuery} do { 
		sleep 0.5;//busy wait
		};
		serverRunningQuery = true;
		_get = nil;
		while {isNil("_get")} do {
			_get = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommandAsync ['goatArma3', '%1']", _query];
			if (_get == "") then {
				_get = nil;
			};
			sleep 0.5; 
		};
		serverRunningQuery = false;
		
	//This converts the string to an array
	_get = call compile _get;

	//TODO: this may change in the future??
	//only select the inner array, throw away this outer array shell
	_get = _get select 0;
	_get = _get select 0;
	  
	//Initialize some empty arrays
	_ammo = [];
	_weapons = [];
	_items = [];
	_assignitems = [];
	_headgear = [];
	_goggles = [];
	_vest = [];
	_vestitems = [];
	_uniform = [];
	_uniformitems = [];
	_backpack = [];
	_packitems = [];
	_handgunitems = [];
	_primarywep = [];
	_secondarywep = [];

	//https://dev-heaven.net/docs/cba/files/strings/fnc_find-sqf.html
	if ([(_get select 1), "`"] call CBA_fnc_find > 0) then {
		_ammo = [(_get select 1), "`"] call CBA_fnc_split;
	} else {
		_ammo set [0, (_get select 1)];
	};
	if ([(_get select 2), "`"] call CBA_fnc_find > 0) then {
		_weapons = [(_get select 2), "`"] call CBA_fnc_split;
	} else {
		_weapons set [0, (_get select 2)];
	};
	if ([(_get select 3), "`"] call CBA_fnc_find > 0) then {
		_items = [(_get select 3), "`"] call CBA_fnc_split;
	} else {
		_items set [0, (_get select 3)];
	};
	if ([(_get select 4), "`"] call CBA_fnc_find > 0) then {
		_assignitems = [(_get select 4), "`"] call CBA_fnc_split;
	} else {
		_assignitems set [0, (_get select 4)];
	};
	if ([(_get select 5), "`"] call CBA_fnc_find > 0) then {
		_headgear = [(_get select 5), "`"] call CBA_fnc_split;
	} else {
		_headgear set [0, (_get select 5)];
	};
	if ([(_get select 6), "`"] call CBA_fnc_find > 0) then {
		_goggles = [(_get select 6), "`"] call CBA_fnc_split;
	} else {
		_goggles set [0, (_get select 6)];
	};
	if ([(_get select 7), "`"] call CBA_fnc_find > 0) then {
		_vest = [(_get select 7), "`"] call CBA_fnc_split;
	} else {
		_vest set [0, (_get select 7)];
	};
	if ([(_get select 8), "`"] call CBA_fnc_find > 0) then {
		_vestitems = [(_get select 8), "`"] call CBA_fnc_split;
	} else {
		_vestitems set [0, (_get select 8)];
	};
	if ([(_get select 9), "`"] call CBA_fnc_find > 0) then {
		_uniform = [(_get select 9), "`"] call CBA_fnc_split;
	} else {
		_uniform set [0, (_get select 9)];
	};
	if ([(_get select 10), "`"] call CBA_fnc_find > 0) then {
		_uniformitems = [(_get select 10), "`"] call CBA_fnc_split;
	} else {
		_uniformitems set [0, (_get select 10)];
	};
	if ([(_get select 11), "`"] call CBA_fnc_find > 0) then {
		_backpack = [(_get select 11), "`"] call CBA_fnc_split;
	} else {
		_backpack set [0, (_get select 11)];
	};
	if ([(_get select 12), "`"] call CBA_fnc_find > 0) then {
		_packitems = [(_get select 12), "`"] call CBA_fnc_split;
	} else {
		_packitems set [0, (_get select 12)];
	};
	
	_handgunitems = [(_get select 13), "`"] call CBA_fnc_split;
	_primarywep = [(_get select 14), "`"] call CBA_fnc_split;
	_secondarywep = [(_get select 15), "`"] call CBA_fnc_split;


	player_equip = [_ammo, _weapons, _items, _assignitems, _headgear, _goggles, _vest, _vestitems, _uniform, _uniformitems, _backpack,
	_packitems, _handgunitems, _primarywep, _secondarywep];
	
	owner _unit publicVariableClient "player_equip";
};
    
