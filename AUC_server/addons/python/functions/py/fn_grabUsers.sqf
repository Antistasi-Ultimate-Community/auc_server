private _users = [];

// if (isServer && hasInterface) exitWith {false};
// perhaps replace with a `local` check as `player` should not be local to the server (?)

{
    private _user = [_x] call AUC_server_fnc_grabUser;

    private _uid = _user#1#0;
    private _name = _user#1#1;
    private _nameSteam = _user#1#2;
    private _isAdmin = _user#1#3;

    if (_forEachIndex >= 20) then {continue}; // webhook can only handle ~2000 characters at a time. With 20 people, we're giving them about 200 characters each

    _users append [[_uid, [_name, _nameSteam], _isAdmin]];
} forEach allPlayers;

_users;