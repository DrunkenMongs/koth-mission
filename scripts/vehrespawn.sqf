/* ----------------------------------------------------------------------------------------------------
File: vehRespawn.sqf
Author: Iceman77
    
Description:
Respawn destroyed and abandoned vehicles
    
Parameter(s):
_this select 0: vehicle 
_this select 1: abandoned delay in minute(s) - Required
_this select 2: destroyed delay in minute(s) - Required

How to use - Vehicle Init Line: 
_nul = [this, 2, 1] execVM "scripts\vehrespawn.sqf"; << 2 minute abandoned delay, 1 minute destroyed delay.
---------------------------------------------------------------------------------------------------- */

private "_veh";

_veh = _this select 0;
_abandonDelay = (_this select 1) * 60;
_deadDelay = (_this select 2) * 60;
_dir = getDir _veh; 
_pos = getPos _veh; 
_vehtype = typeOf _veh; 

if (isServer) then {
    While {True} Do {
        sleep 1;
        if ((alive _veh) && {canMove _veh} && {{alive _x} count crew _veh == 0}) then {
            _abandoned = true;

                for "_i" from 0 to _abandonDelay do {  
                    if (({alive _x} count (crew _veh) > 0) || (!alive _veh) || (!canMove _veh)) exitWith {_abandoned = false;};
                    sleep 1;  
                };
             
            if ((_abandoned) && {_veh distance _pos > 10}) then {
                deleteVehicle _veh;
                sleep 1;
                _veh = createVehicle [_vehtype, _pos, [], 0, "CAN_COLLIDE"];
                _veh setDir _dir;
                _veh setPos [_pos select 0, _pos select 1,0];
            };
        };

        if ((!alive _veh) || (!canMove _veh)) then {
            _dead = true;

                for "_i" from 0 to _deadDelay do {  
                    if (({alive _x} count (crew _veh) > 0) || (canMove _veh)) exitWith {_dead = false;};
                    sleep 1;  
                };
             
            if (_dead) then {
                deleteVehicle _veh;
                sleep 1;
                _veh = createVehicle [_vehtype, _pos, [], 0, "CAN_COLLIDE"];
                _veh setDir _dir;
                _veh setPos [_pos select 0, _pos select 1,0];
            };
        };
    };
};