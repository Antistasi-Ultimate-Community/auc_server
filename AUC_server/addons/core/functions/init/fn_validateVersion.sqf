// This initial loop should handle players who joined before the server init finished, therefore never being processed by PlayerConnected
{
    private _versionFormatted = format["auc_client_%1", getPlayerUID _x];
    private _version = serverNamespace getVariable [(_versionFormatted#0), "none"];

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
} forEach allPlayers;