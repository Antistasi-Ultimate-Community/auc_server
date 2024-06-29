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

if !([_player] call AUC_server_fnc_canAddMember) exitWith {false};

private _uid = getPlayerUID _player;

membersX pushBackUnique _uid;
_player setVariable ["eligible", true, true];
[localize "STR_A3A_OrgPlayers_membership_header", format [localize "STR_A3A_OrgPlayers_membership_success_add",name _player]] call A3A_fnc_customHint;
[localize "STR_A3A_OrgPlayers_membership_header", localize "STR_A3A_OrgPlayers_membership_success_add_target"] remoteExec ["A3A_fnc_customHint", _player];

publicVariable "membersX";
playSound "A3AP_UiSuccess";

true;