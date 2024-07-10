params [["_user", ObjNull]];

if (_user isEqualTo ObjNull) exitWith {false};

private _user_id = getPlayerID _user; // getUserInfo requires an ID, the rest don't

private _data = getUserInfo _user_id;
private _isHeadless = _data#7;

if (_data isEqualTo []) then {continue};
if (_isHeadless) then {continue};

private _uid = _data#2;
private _name = _data#3;
private _nameSteam = _data#5;
private _isAdmin = _data#8;

private _data = [_data, [_uid, _name, _nameSteam, _isAdmin]];

_data;