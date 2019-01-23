while {true} do
{
	sleep 300;
	
	if(player_stats_got == 1) then
	{
		[[player, player_stats], "updatePlayerStats", false, false] spawn BIS_fnc_MP;
		sleep 0.5;
		hint "Your stats were saved automatically on the server.";
	}
};