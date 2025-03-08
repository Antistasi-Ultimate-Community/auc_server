/*
    Author:
        Silence
    
    Description:
        Adds _player to the member list (If they're not already a member)
    
    Params:
        _player <OBJECT>
    
    Usage:
        [player] call AUC_server_fnc_addMember;
    
    Return:
        true/false <BOOL>
*/

params ["_player"];

private _uid = getPlayerUID _player;

if (_uid in membersX) exitWith {true};

membersX pushBackUnique _uid;
_player setVariable ["eligible", true, true];
[localize "STR_A3A_OrgPlayers_membership_header", format [localize "STR_A3A_OrgPlayers_membership_success_add",name _player]] call A3A_fnc_customHint;
[localize "STR_A3A_OrgPlayers_membership_header", localize "STR_A3A_OrgPlayers_membership_success_add_target"] remoteExec ["A3A_fnc_customHint", _player];

publicVariable "membersX";
playSound "A3AP_UiSuccess";

[format ["Added %1 to the member list.", _uid]] call AUC_server_fnc_log;

true;