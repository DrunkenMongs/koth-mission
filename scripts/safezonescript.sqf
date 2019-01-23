/*
 * Safezone Commander Script by AlienX
 * www.opendayz.net
 * Thanks to everyone who has provided other scripts of the same format, without you I would not have been able to make this.
 * Customized fpr Arma3 :P
 */

diag_log ( "Starting Safezone Commander!" );
 
if ( isDedicated || isServer ) exitWith {diag_log ( "Error: Attempting to start AGN products on a server where it should not be!" );}; 

Private ["_EH_Fired", "_ehID", "_fix","_inVehicle","_inVehicleLast","_EH_Fired_Vehicle"];
		
//SCRIPT SETTINGS
AGN_safeZoneDebug = false; //Debug notes on screen.
AGN_safeZoneGodmode = true; 								//Should safezone Godmode be enabled?
AGN_safeZoneMessages = true;								//Should players get messages when entering and exiting the safe zone?
AGN_safeZone_Vehicles_DisableMountedGuns = true;			//Should players not be able to shoot bullets/projectiles from mounted guns?
AGN_safeZone_Vehicles_AllowGearFromWithinVehicles = true;	//Should players be able to open the gear screen while they are inside a vehicle?
AGN_safeZone_Players_DisableWeaponFiring = true;			//Should players not be able to shoot bullets/projectiles from their weapon(s)?

//Probs not needed, but meh :)
disableSerialization;

waitUntil {!isNull player};
waitUntil {alive player};
if ( AGN_safeZoneMessages ) then { systemChat ( Localize "STR_DGX_SZCOM" ); };

_inVehicle = objNull;
_inVehicleLast = objNull;

while {true} do {
	
	waitUntil { safezoneyesorno };

	_inSafezoneFinished = false;
	if ( AGN_safeZoneMessages ) then { systemChat (Localize "STR_DGX_SZCOM"); };
	_thePlayer = player;

	if ( AGN_safeZoneGodmode ) then
	{
		_thePlayer removeAllEventHandlers "handleDamage";
		_thePlayer addEventHandler ["handleDamage", {false}];
		_thePlayer allowDamage false;
	};
	
	if ( AGN_safeZone_Players_DisableWeaponFiring ) then
	{
		_EH_Fired = _thePlayer addEventHandler ["Fired", {
			systemChat (Localize "STR_DGX_SZDFIRE");
			NearestObject [_this select 0,_this select 4] setPos[0,0,0];
		}];
	};
	
	
	if ( AGN_safeZone_Vehicles_DisableMountedGuns ) then
	{
		while { safezoneyesorno } do
		{
			sleep 0.1;
			if ( !(isNull _inVehicle) && (vehicle player == player) ) then
			{
				_inVehicle removeEventHandler ["Fired", _EH_Fired_Vehicle];
				_inVehicleLast = _inVehicle;
				_inVehicleLast removeEventHandler ["Fired", _EH_Fired_Vehicle];
				_inVehicle = objNull;
			};
			
			if ( vehicle player != player && isNull _inVehicle ) then
			{
				if (AGN_safeZoneMessages) then { systemChat ( Localize "STR_DGX_NOFIREVEH" ); };
				_inVehicle = vehicle player;
				_inVehicleDamage = getDammage _inVehicle;
				_EH_Fired_Vehicle = _inVehicle addEventHandler ["Fired", {
					systemChat ("You can not fire your vehicles weapon in a Base");
					NearestObject [_this select 0,_this select 4] setPos[0,0,0];
				}];
			};
		};
	} else {
		waitUntil { !safezoneyesorno };
	};

	AGN_LastPlayerLookedAt = objNull;
	AGN_LastPlayerLookedAtCountDown = 5;
	if ( AGN_safeZoneMessages ) then { systemChat (Localize "STR_DGX_SZGODDIS"); };
	
	if ( AGN_safeZone_Vehicles_DisableMountedGuns ) then
	{
		if ( !(isNull _inVehicle) ) then
		{
			if ( AGN_safeZoneMessages ) then { systemChat ( Localize "STR_DGX_FIREVEHDIS" ); };
			_inVehicle removeEventHandler ["Fired", _EH_Fired_Vehicle];
		};
		
		if ( !(isNull _inVehicleLast) ) then
		{
			if ( AGN_safeZoneMessages ) then { systemChat ( Localize "STR_DGX_FIREVEHDIS" ); };
			_inVehicleLast removeEventHandler ["Fired", _EH_Fired_Vehicle];
		};
	};

	if ( AGN_safeZone_Players_DisableWeaponFiring ) then
	{
		_thePlayer removeEventHandler ["Fired", _EH_Fired];
	};
	
	if ( AGN_safeZoneGodmode ) then
	{
		_thePlayer addEventHandler ["handleDamage", {true}];
		_thePlayer removeAllEventHandlers "handleDamage";
		_thePlayer allowDamage true;
	};
	_inSafezoneFinished = true;
};