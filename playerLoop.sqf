while {true} do
{
	sleep 10;
	
    //check if UI is alive. Reinit if not (eg. after loading) 
   if (isNull (uiNamespace getvariable ["statsDisplay",displayNull])) then 
    {	
        cutRsc ["statsScreen", "PLAIN"];  //show Resource
        
        //you can save the controls for easy access later to uinamespace vars
        with uiNamespace do
        {
			//statsstime = statsDisplay displayCtrl 999;
            statsxp = statsDisplay displayCtrl 1000;
			statskills = statsDisplay displayCtrl 1001;
			statsblu = statsDisplay displayCtrl 1002;
			statsred = statsDisplay displayCtrl 1003;
			statsind = statsDisplay displayCtrl 1004;
        };
    };
    
	uiNamespace setVariable ['tickets_blu', floor (TICKETS_BLU / 3)];
	uiNamespace setVariable ['tickets_red', floor (TICKETS_RED / 3)];
	uiNamespace setVariable ['tickets_ind', floor (TICKETS_IND / 3)];
	uiNamespace setVariable ['playerxp', player_stats select 0];
	
	_rankinfo = player_stats select 0 call getRankInfo;
	
	uiNamespace setVariable ['playerrank', _rankinfo select 0];
	uiNamespace setVariable ['playernextrank', _rankinfo select 1];
	uiNamespace setVariable ['playerkills', player_stats select 1];
	uiNamespace setVariable ['playerdeaths', player_stats select 2];
	
    //update controls. ONLY uinamespace from this point
    with uiNamespace do
    {
		//_output = format ["Server restart: %1 min", _tL];
        //statsstime ctrlSetText _output;
        //statsstime ctrlCommit 0.1; 
		
		_output = format ["Rank: %1   XP: %2/%3", playerrank, playerxp, playernextrank];
        statsxp ctrlSetText _output;
        statsxp ctrlCommit 0.1; 
		
		_output = format ["Kills: %1   Deaths: %2", playerkills, playerdeaths];
		statskills ctrlSetText _output;
        statskills ctrlCommit 0.1; 
		
		statsblu ctrlSetText str tickets_blu;
        statsblu ctrlCommit 0.1; 
	
		statsred ctrlSetText str tickets_red;
        statsred ctrlCommit 0.1; 
		
		statsind ctrlSetText str tickets_ind;
        statsind ctrlCommit 0.1; 
    };
};