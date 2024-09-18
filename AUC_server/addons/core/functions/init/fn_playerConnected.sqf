addMissionEventHandler ["PlayerConnected", 
{
    params ["_id", "_uid", "_name", "_jip", "_owner", "_idstr"];

    if ("hc" in _name) exitWith {};

    private _player = [_uid] call AUC_server_fnc_getPlayer;

    private _version = _player#0;
    private _nameSteam = _player#1;

	// [format["%1 connected, version: %2", _name, _version], _fnc_scriptName] call AUC_server_fnc_log; // not needed anymore, version mismatches aren't as big of a deal anymore

    if (!(isNil "hasPythia") && {hasPythia}) then {
        private _user = [[_uid, [_name, _nameSteam], 0]];
        ["auc_server_py.handle_user_return_thread", [_user]] call py3_fnc_callExtension;
    } else {
        private _user = [_name, _nameSteam, str(_uid)];
        "Webhook" callExtension ["", _user];
    };
}];