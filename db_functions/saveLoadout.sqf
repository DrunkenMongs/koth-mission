if (isServer) then 
{
		_allWeapons = _this select 0;
		sleep 0.5;

		_query = "UPDATE player SET ";
		_query_strings = ["ammo = ", "weapons = ", "items = ", "assignitems = ", "headgear = ", "goggles = ", "vest = ", "vestitems = ", "uniform = ", "uniformitems = ", "backpack = ", "packitems = ", "handgunitems = ", "primarywep = ", "secondarywep = "];

		//some of the entries may be empty so we have to generate a string
		for "_i" from 1 to (count _allWeapons)-1 do {
			if (_i == (count _allWeapons)-1) then {
				if ((_allWeapons select _i) != "") then {
					_query = _query + (_query_strings select _i-1) + "'" + (_allWeapons select _i) + "'";
				} else {
					_query = _query + (_query_strings select _i-1) + "NULL";
				};
			} else {
				if ((_allWeapons select _i) != "") then {
					_query = _query + (_query_strings select _i-1) + "'" + (_allWeapons select _i) + "', ";
				} else {
					_query = _query + (_query_strings select _i-1) + "NULL,";
				};
			};
		};
		_check = format [" WHERE uid = '%1'", (_allWeapons select 0)];
		_query = _query + _check;

		while{!isNil("serverRunningQuery") && serverRunningQuery} do { 
		sleep 0.5;//busy wait
		};
		serverRunningQuery = true;
		_return = nil;
		while {isNil("_return")} do {
			_return = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommandAsync ['goatArma3', '%1']", _query];
			if (_return == "") then {
				_return = nil;
			};
			sleep 0.5; 
		};
		serverRunningQuery = false;
};