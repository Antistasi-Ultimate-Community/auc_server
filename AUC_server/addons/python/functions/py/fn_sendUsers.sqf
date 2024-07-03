params [
    ["_users", []]
];

if (_users isEqualTo []) then {
    _users = call AUC_server_fnc_grabUsers;
};

// if (_users isEqualTo false || {isServer && hasInterface}) exitWith {"SP env detected. Should be running in MP. Aborting"};

diag_log _users;

if !(isServer) exitWith {"This should not be running on the client! It's a server-only function!"};

["auc_server_py.handle_user_return", [_users]] call py3_fnc_callExtension;