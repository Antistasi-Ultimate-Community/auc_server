/*
    Author:
        Silence
    
    Description:
        Kicks a player back to lobby with given reason and logs to the server with a message
    
    Params:
        _reason  <STRING>
        _target  <OBJECT> <DEFAULT: ObjNull>
        _message <STRING> <DEFAULT: "">
    
    Usage:
        ["forbidden_mods", player, "Player loaded forbidden mods."] call AUC_server_fnc_kickPlayer;
    
    Return:
        _return <TYPE>
*/

params [
    "_reason",
    ["_target", ObjNull],
    ["_message", ""]
];

private _name = "";

if (_target isEqualTo ObjNull) exitWith {false};
if (_target isEqualType 0) then {_name = "Inaccessible"} else {_name = name _target};

[(format["Kicking %3. Reason: %1. Note: %2", _reason, _message, _name]), _fnc_scriptName, "server"] call AUC_fnc_log;

// [_reason, false, 1, false, false] call BIS_fnc_endMission;
[_reason, false, 1, false, false] remoteExecCall ["BIS_fnc_endMission", _target];

true;