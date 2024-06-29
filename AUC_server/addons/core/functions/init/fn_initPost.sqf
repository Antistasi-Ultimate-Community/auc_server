/*
    Author:
        Silence
    
    Description:
        Runs the post init related functions
    
    Params:
        N/A
    
    Usage:
        call AUC_server_fnc_initPost;
    
    Return:
        N/A
*/

private _continue = call AUC_fnc_canRunInit;

if (_continue isEqualTo false) exitWith {
    ["server postInit aborted.", _fnc_scriptName] call AUC_fnc_log
};

[] spawn AUC_server_fnc_initAntistasi;
 
["server postInit complete.", _fnc_scriptName] call AUC_fnc_log;