params [["_uid", -1]];

if (_uid isEqualTo -1) exitWith {["none", "none"]};

private _playerFormatted = format["auc_client_%1", _uid];
private _player = serverNamespace getVariable [_playerFormatted, ["none", "none"]];

if (_player isEqualType "" || {isNil "_player"}) then {
    _player = ["none", "none"];
};

_player;