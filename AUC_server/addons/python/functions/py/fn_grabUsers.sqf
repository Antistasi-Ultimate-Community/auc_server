private _users = [];

// if (isServer && hasInterface) exitWith {false};
// perhaps replace with a `local` check as `player` should not be local to the server (?)

{
    private _user_id = getPlayerID _x; // getUserInfo requires an ID, the rest doesn't

    private _data = getUserInfo _user_id;
    private _isHeadless = _data#7;

    if (_data isEqualTo []) then {continue};
    if (_isHeadless) then {continue};

    private _uid = _data#2;
    private _name = _data#3;
    private _nameSteam = _data#5;
    private _isAdmin = _data#8;

    _users append [[_uid, [_name, _nameSteam], _isAdmin]];
} forEach allPlayers;

_users;