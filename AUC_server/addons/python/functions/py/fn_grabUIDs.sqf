params [["_uids", []]];

{
    private _uid = "";

    if (isPlayer _x) then {
        _uid = getPlayerUID player;
    } else {
        continue;
    };

    _uids pushBack _uid;
} forEach allPlayers;

_uids;