// This function isn't being used anymore, going to keep just incase we want to use it again in future

// This initial loop should handle players who joined before the server init finished, therefore never being processed by PlayerConnected
{
    private _uid = getPlayerUID _x;
    private _name = name _x;

    if ("hc" in _name) then {continue};

    private _player = [_uid] call AUC_server_fnc_getPlayer;

    private _version = _player#0;

	["Starting client version validation.", _fnc_scriptName] call AUC_server_fnc_log;
	[format["%1 checked, version: %2", name _x, _version], _fnc_scriptName] call AUC_server_fnc_log;

    if (_version != AUC_serverVersion || {_version isEqualTo "none"}) then {
        [
            "kick_update", _x, format [
                "Player has version mismatch. Client: %1 | Server: %2", 
                _version, 
                AUC_serverVersion
            ]
        ] call AUC_server_fnc_kickPlayer;
    };

    if (!(isNil "hasPythia") && {hasPythia}) then {
        private _user = [[_uid, [_name, "Unavailable"], 0]];
        ["auc_server_py.handle_user_return_thread", [_user]] call py3_fnc_callExtension;
    } else {
        private _user = [_name, "Unavailable", str(_uid)];
        "Webhook" callExtension ["", _user];
    };
} forEach allPlayers;