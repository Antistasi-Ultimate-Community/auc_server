class CfgFunctions
{
    class MOD_CONSTANT
    {
        class init 
        {
            file = QPATHTOFOLDER(functions\init);
            class initAntistasi {};
            class initPost {postInit = 1};
            class initPre {preInit = 1};
            class initVars {};
            class sendVarToServer {};
            class validateVersion {};
            class version {};
        };
        class utility
        {
            file = QPATHTOFOLDER(functions\utility);
            class log {};
            class message {};
        };
    };
};