private _memberUIDs = [];

private _memberClasses = "true" configClasses (configFile >> "AUC_Members");

{
    private _uid = getText (_x >> "uid");
    if (_uid isEqualTo "") then {continue};

    _memberUIDs pushBackUnique (_uid)
} forEach _memberClasses;

diag_log _memberUIDs;

AUC_allowedMembers = _memberUIDs;
publicVariable "AUC_allowedMembers";