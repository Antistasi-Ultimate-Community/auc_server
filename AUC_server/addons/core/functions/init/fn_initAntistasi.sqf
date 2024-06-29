/*
    Author:
        Silence
    
    Description:
        Runs after Antistasi server init, doing things we want (only if mission is Antistasi)
    
    Params:
        N/A
    
    Usage:
        call AUC_server_fnc_initAntistasi;
    
    Return:
        N/A
*/

["Waiting for Antistasi server init to finish.", _fnc_scriptName] call AUC_fnc_log;

waitUntil {sleep 1; !(isNil "serverInitDone")}; // wait until antistasi has done server init

call AUC_server_fnc_initVars; // I want to be safe and make sure that EVERY client knows AUC_forbiddenMods variable

["Antistasi server init has finished.", _fnc_scriptName] call AUC_fnc_log;