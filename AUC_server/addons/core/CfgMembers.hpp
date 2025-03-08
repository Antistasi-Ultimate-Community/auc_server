class AUC_Members
{
    class member_base
    {
        uid = "";
        discordID = "";
        name = "";
        comment = "";
        // None of the below do anything yet, just putting it here for future
        isAdmin = 0;
        isModerator = 0;
        consoleAccess = 0;
        zeusAccess = 0;
    };

    class moderator_base : member_base
    {
        isModerator = 1;
        zeusAccess = 1;
    };

    class admin_base : moderator_base
    {
        isAdmin = 1;
        consoleAccess = 1;
    };

    // Admins
    class admin_Silence : admin_base
    {
        name = "Silence";
        uid = "76561198219466935";
        discordID = "474144080801169418";
    };
    class admin_Fatboy : admin_base
    {
        name = "Fatboy";
        uid = "76561199185706995";
        discordID = "853411288327127040";
    };
    class admin_Maxx : admin_base
    {
        name = "MaxxLite";
        uid = "76561198093086639";
        discordID = "201170426506903554";
    };
    class admin_stutpip123 : admin_base
    {
        name = "stutpip123";
        uid = "76561198087848420";
        discordID = "189800745254518796";
    };

    // Moderators
    class moderator_Mercer : moderator_base
    {
        name = "Mercer";
        uid = "76561198043079894";
        discordID = "204570156855328768";
    };
    class moderator_DIVISION21 : moderator_base
    {
        name = "DIVISION21";
        uid = "76561198152122365";
        discordID = "541051683095052288";
    };
    class moderator_CaptRyanX : moderator_base
    {
        name = "CaptRyanX";
        uid = "76561198116799167";
        discordID = "189871646256005121";
    };
    class moderator_Daniel : moderator_base
    {
        name = "Daniel";
        uid = "76561199385004929";
        discordID = "670325098065952789";
    };
    class moderator_Xestiny : moderator_base
    {
        name = "Xestiny";
        uid = "76561198081022102";
        discordID = "328824897914667009";
    };

    // Members
    class member_chaotic : member_base
    {
        name = "Chaotic";
        uid = "76561198247927918";
        discordID = "1223784992447004702";
    };
    class member_Nigel : member_base
    {
        name = "Nigel Nigellington";
        uid = "76561198272700869";
        discordID = "1223403019740381246";
    };
    class member_Richy : member_base
    {
        name = "Richy";
        uid = "76561198193668830";
        discordID = "1223403019740381246";
    };
    class member_UndeadPheasant : member_base
    {
        name = "UndeadPheasant";
        uid = "76561198875085709";
        discordID = "460042536333869056";
    };
    class member_yunglewin : member_base
    {
        name = "salamee";
        uid = "76561198108151395";
        discordID = "248897031312113664";
    };
    class member_FewScientist : member_base
    {
        name = "FewScientist";
        uid = "76561199263199870";
        discordID = "335518665967534100";
    };
    class member_Pimpcane : member_base
    {
        name = "Pimpcane";
        uid = "76561198056336479";
        discordID = "135549060269473794";
    };
    class member_PlayerBot : member_base
    {
        name = "PlayerBot";
        uid = "76561198133923172";
        discordID = "884003151055847424";
    };
    class member_slamsgt : member_base
    {
        name = "gad";
        uid = "76561198298175109";
        discordID = "360398485490630657";
    };
    class member_Rex2206 : member_base
    {
        name = "rex22";
        uid = "76561198814679376";
        discordID = "426795714618720256";
    };
    class member_s1mp : member_base
    {
        name = "ahagg";
        uid = "76561198257530524";
        discordID = "344945232816766988";
    };
    class member_llama : member_base
    {
        name = "llama";
        uid = "76561198253909394";
        discordID = "270533530411466752";
    };
    class member_SgtSweatman : member_base
    {
        name = "Sgt. L. Sweatman";
        uid = "76561198119488224";
        discordID = "83344934131732480";
    };
    class member_Danisaiah : member_base
    {
        name = "Danisaiah";
        uid = "76561198135909632";
        discordID = "551112277445574666";
    };
    class member_OperatorBlizz : member_base
    {
        name = "Operator Blizz";
        uid = "76561199173080258";
        discordID = "655634218600366089";
    };
    class member_Flora : member_base
    {
        name = "Flora";
        uid = "76561198064790044";
        discordID = "841195607108354055";
    };
    class member_Mozzie : member_base
    {
        name = "Mozzie";
        uid = "76561198390780858";
        discordID = "375615662866825216";
        comment = "If found to be causing issues, have their membership revoked and denied from future application";
    };
    class member_Doppler817 : member_base
    {
        name = "Doppler817";
        uid = "76561198348548708";
        discordID = "388070719667437578";
    };
    class member_TheMercyKiller : member_base
    {
        name = "The MercyKiller";
        uid = "76561198103928054";
        discordID = "301908323559800832";
    };
    class member_Danky : member_base
    {
        name = "Danky";
        uid = "76561198119833274";
        discordID = "215365427340115968";
    };
    class member_GOODGOO2 : member_base
    {
        name = "GOODGOO2";
        uid = "76561199388269727";
        discordID = "1024451858217058336";
    };
    class member_md5ray01 : member_base
    {
        name = "MD5Ray01";
        uid = "76561198079251557";
        discordID = "98274036634615808";
    };
};