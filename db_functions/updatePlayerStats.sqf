if (isServer) then
{
	_unit = _this select 0;
	_uid = getPlayerUID _unit;
	_stats = _this select 1;
	
	_xp = _stats select 0;
	_kills = _stats select 1;
	_deaths = _stats select 2;
	
	_query = "UPDATE player SET xp=" + "'" + (str _xp) + "',kills='" + (str _kills) + "',deaths='" + (str _deaths) + "'";

	_check = format [" WHERE uid = '%1'", _uid];
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

    
