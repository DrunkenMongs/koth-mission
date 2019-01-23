//player = _this select 0;
_puid = getPlayerUID player;

_ammo = (magazines player);
_ammo = [_ammo] call formatArray;
_weapons = (weapons player);
_weapons = _weapons + ["Throw","Put"];
_weapons = [_weapons] call formatArray;
_items = (items player);
_items = [_items] call formatArray;
_assignitems = (assignedItems player);
_assignitems = [_assignitems] call formatArray;
_headgear = (headgear player);
_headgear = [_headgear] call formatArray;
_goggles = (Goggles player);
_goggles = [_goggles] call formatArray;
_vest = (vest player);
_vest = [_vest] call formatArray;
_vestitems = (vestItems player);
_vestitems = [_vestitems] call formatArray;
_uniform = (uniform player);
_uniform = [_uniform] call formatArray;
_uniformitems = (uniformItems player);
_uniformitems = [_uniformitems] call formatArray;
_backpack = (backpack player);
_backpack = [_backpack] call formatArray;
_packitems = (backpackItems player);
_packitems = [_packitems] call formatArray;
_handgunitems = (handgunItems player);
_handgunitems = [_handgunitems] call formatArray;
_primarywep = (primaryWeaponItems player);
_primarywep = [_primarywep] call formatArray;
_secondarywep = (secondaryWeaponItems player);
_secondarywep = [_secondarywep] call formatArray;


//format return value, all weapons separated out into an array
_return_response = [_puid, _ammo, _weapons, _items, _assignitems, _headgear, _goggles, _vest, _vestitems, _uniform, _uniformitems, _backpack, _packitems, _handgunitems, _primarywep, _secondarywep];


_return_response
