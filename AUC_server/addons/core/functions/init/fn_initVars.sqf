/*
    Author:
        Silence
    
    Description:
        Initialises variables for the AUC namespace
    
    Params:
        N/A
    
    Usage:
        call AUC_server_fnc_initVars;
    
    Return:
        N/A
*/

["Initialising server variables.", _fnc_scriptName] call AUC_fnc_log;

AUC_forbiddenMods = [ // list of CfgPatches names to block
    "nks_arsenal", //Nks Arsenal (Personal ACE + Virtual arsenals)
    "DCONVirtualGarage", //DCON's Multiplayer Vehicle Spawner
    "LootToVehicle", //Loot to vehicle
    "bear_antistasi_looter", //Loot to Vehicle for ACE and Antistasi
    "FastBandages", //Fast bandage ACE mods
    "PA_arsenal", //Yet another personal arsenal mod
    "PHNTM_LootingEnhanced" //Looting Enhanced
];

call AUC_server_fnc_version;

hasPythia = false;

if (["PY3_Pythia"] call A3U_fnc_hasAddon) then {
    hasPythia = true;
};

publicVariable "AUC_forbiddenMods"; // This will broadcast it to each client (+ JIP)