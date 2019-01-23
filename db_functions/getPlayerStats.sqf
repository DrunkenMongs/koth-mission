if (isServer) then
{
	//check if player exists in db
	_unit = _this select 0;
	_uid = getPlayerUID _unit;
	_name = name _unit;
		
		_query = format ["SELECT id,uid FROM player WHERE uid = '%1'", _uid];
		
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
	
		if ((count (toArray(_get))) < 6) then { //if user doesnt exist in database
		
			_query = "INSERT into player (uid, name, xp, kills, deaths, ammo, weapons, items, assignitems, headgear, goggles, vest, vestitems, uniform, uniformitems, backpack, packitems, handgunitems,
			primarywep, secondarywep) VALUES(";
		
			_query = _query + "'" + (_uid) + "'," + "'" + (_name) + "'" + ",0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)";

			_return = nil;
			while {isNil("_return")} do {
				_return = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommandAsync ['goatArma3', '%1']", _query];
				if (_return == "") then {
					_return = nil;
				};
				sleep 0.5;
			};
		};

		//get saved stats from server
		_query = format ["SELECT xp,kills,deaths FROM player WHERE uid = '%1'", _uid];
		
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

	//only select the inner array, throw away this outer array shell
	_get = _get select 0;
	_get = _get select 0;

	_string = _get select 0;
	_xp = parseNumber _string;
	_string = _get select 1;
	_kills = parseNumber _string;
	_string = _get select 2;
	_deaths = parseNumber _string;
	
	player_stats_add = [_xp,_kills,_deaths];
	owner _unit publicVariableClient "player_stats_add";
	player_stats_got = 1;
	owner _unit publicVariableClient "player_stats_got";
};