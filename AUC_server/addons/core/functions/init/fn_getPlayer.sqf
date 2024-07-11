params [["_uid", -1]];

if (_uid isEqualTo -1) exitWith {false}; 

private _playerFormatted = format["auc_client_%1", _uid];
private _player = serverNamespace getVariable [_playerFormatted, "none"];

_player;