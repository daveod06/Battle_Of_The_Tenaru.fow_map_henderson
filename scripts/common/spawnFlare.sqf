// [_staticName] execVm "scripts\common\spawnFlare.sqf"
if(!isServer)exitWith{};
private ["_pos","_center","_spawnTarget","_color","_group","_flare"];
COMMON_fnc_spawnFlare = compile preprocessfile "scripts\common\spawnFlare.sqf";
_spawnTarget = _this select 0;
_color = _this select 1;

// F_40mm_Yellow

_pos = getPosASL _spawnTarget;
//_center = createCenter sideLogic;
//_group = createGroup _center;
_flare = "F_40mm_Yellow" createvehicle _pos;
_flare setVelocity [1,2,4];
//_flare = _group createUnit ["ModuleFlare_F",_pos , [], 0, ""];
//_flare setVariable ["Type", _color ,true];