params [
    ["_key", nil],
    ["_value", nil]
];

if !(isServer) exitWith {"Server-sided function miscalled."};

[format["Sending %1 to server with value %2", _key, _value], _fnc_scriptName] call AUC_server_fnc_log;

serverNamespace setVariable [_key, _value];