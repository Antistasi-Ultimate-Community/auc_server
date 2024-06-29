private _uids = call AUC_server_fnc_grabUIDs;

if !(isServer) exitWith {"This should not be running on the client! It's a server-only function!"};

["auc_server_py.handle_uid_return", [_uids]] call py3_fnc_callExtension;