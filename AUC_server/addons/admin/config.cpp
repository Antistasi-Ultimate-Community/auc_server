#include "script_component.hpp" // Gives us access to all the macros in core/script_mod.hpp

class CfgPatches
{
	class ADDON
	{
		name = COMPONENT_NAME;
		units[] = {};
		weapons[] = {};
		requiredVersion = REQUIRED_VERSION;
		requiredAddons[] = {
			"auc_admin",
		};
		author = AUTHOR;
		url = "";
		VERSION_CONFIG;
	};
};

#include "CfgFunctions.hpp"