/*
    Author:
        Silence
    
    Description:
        Logs a message to server
    
    Params:
        _message <STRING>
        _file    <STRING> <DEFAULT: _fnc_scriptName>
    
    Usage:
        ["This is a log message."] call AUC_server_fnc_log;
    
    Return:
        N/A
*/

params [
    "_message", 
    ["_file", _fnc_scriptName]
];

diag_log (" | AUC Server Addon" + " | File: " + _file + " | " + _message + " | ")

//| AUC Server Addon | File: _file | _message |