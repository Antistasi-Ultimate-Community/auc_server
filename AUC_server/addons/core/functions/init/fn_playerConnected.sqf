addMissionEventHandler ["PlayerConnected", {
    params ["_id", "_uid", "_name", "_jip", "_owner", "_idstr"];

    private _versionFormatted = format["auc_client_version_%1", _uid];
    private _version = serverNamespace getVariable [_versionFormatted, "none"];

	["Starting client PlayerConnected version validation.", _fnc_scriptName] call AUC_server_fnc_log;
	[format["%1 connected, version: %2", _name, _version], _fnc_scriptName] call AUC_server_fnc_log;

    if (_version != AUC_serverVersion || {_version isEqualTo "none"}) then {
        [
            "kick_update", _owner, format [
                "Player has version mismatch. Client: %1 | Server: %2", 
                _version, 
                AUC_serverVersion
            ]
        ] call AUC_server_fnc_kickPlayer;
    };

    if (hasPythia) then {
        private _user = [[_uid, [_name, "Unavailable"], 0]];
        ["auc_server_py.handle_user_return_thread", [_user]] call py3_fnc_callExtension;
    };
}];