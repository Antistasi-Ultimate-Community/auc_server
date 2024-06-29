#include "script_component.hpp"

class CfgPatches
{
	class ADDON
	{
		name = COMPONENT_NAME;
		units[] = {};
		weapons[] = {};
		requiredVersion = REQUIRED_VERSION;
		requiredAddons[] = {
            "auc_core",
		};
		author = AUTHOR;
		authorUrl = "";
		VERSION_CONFIG;
	};
};

#include "CfgFunctions.hpp"