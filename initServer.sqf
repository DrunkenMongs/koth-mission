if (isServer) then
{
serverRunningQuery = false;

TICKETS_BLU = 0;
publicVariable "TICKETS_BLU";
TICKETS_RED = 0;
publicVariable "TICKETS_RED";
TICKETS_IND = 0;
publicVariable "TICKETS_IND";

createMarker ["OBJECTIVE", getMarkerPos "objective_main"];
"OBJECTIVE" setMarkerShape "ELLIPSE";
"OBJECTIVE" setMarkerSize [400, 400];
"OBJECTIVE" setMarkerBrush "Solid";
"OBJECTIVE" setMarkerColor "ColorBlack";
"OBJECTIVE" setMarkerAlpha 0.5;

createMarker ["OBJECTIVEINNER", getMarkerPos "objective_main"];
"OBJECTIVEINNER" setMarkerShape "ELLIPSE";
"OBJECTIVEINNER" setMarkerSize [80, 80];
"OBJECTIVEINNER" setMarkerBrush "Solid";
"OBJECTIVEINNER" setMarkerColor "ColorBlack";
"OBJECTIVEINNER" setMarkerAlpha 0.6;

//
createMarker ["TOWER1", getMarkerPos "tower_1"];
"TOWER1" setMarkerShape "ELLIPSE";
"TOWER1" setMarkerSize [10, 10];
"TOWER1" setMarkerBrush "Solid";
"TOWER1" setMarkerColor "ColorPink";
"TOWER1" setMarkerAlpha 0.6;

createMarker ["TOWER2", getMarkerPos "tower_2"];
"TOWER2" setMarkerShape "ELLIPSE";
"TOWER2" setMarkerSize [10, 10];
"TOWER2" setMarkerBrush "Solid";
"TOWER2" setMarkerColor "ColorPink";
"TOWER2" setMarkerAlpha 0.6;

createMarker ["TOWER3", getMarkerPos "tower_3"];
"TOWER3" setMarkerShape "ELLIPSE";
"TOWER3" setMarkerSize [10, 10];
"TOWER3" setMarkerBrush "Solid";
"TOWER3" setMarkerColor "ColorPink";
"TOWER3" setMarkerAlpha 0.6;

createMarker ["TOWER4", getMarkerPos "tower_4"];
"TOWER4" setMarkerShape "ELLIPSE";
"TOWER4" setMarkerSize [10, 10];
"TOWER4" setMarkerBrush "Solid";
"TOWER4" setMarkerColor "ColorPink";
"TOWER4" setMarkerAlpha 0.6;

createMarker ["TOWER5", getMarkerPos "tower_5"];
"TOWER5" setMarkerShape "ELLIPSE";
"TOWER5" setMarkerSize [10, 10];
"TOWER5" setMarkerBrush "Solid";
"TOWER5" setMarkerColor "ColorPink";
"TOWER5" setMarkerAlpha 0.6;

createMarker ["TOWER6", getMarkerPos "tower_6"];
"TOWER6" setMarkerShape "ELLIPSE";
"TOWER6" setMarkerSize [10, 10];
"TOWER6" setMarkerBrush "Solid";
"TOWER6" setMarkerColor "ColorPink";
"TOWER6" setMarkerAlpha 0.6;;

createMarker ["TOWER7", getMarkerPos "tower_7"];
"TOWER7" setMarkerShape "ELLIPSE";
"TOWER7" setMarkerSize [10, 10];
"TOWER7" setMarkerBrush "Solid";
"TOWER7" setMarkerColor "ColorPink";
"TOWER7" setMarkerAlpha 0.6;

[] execVM "serverLoop.sqf";
};