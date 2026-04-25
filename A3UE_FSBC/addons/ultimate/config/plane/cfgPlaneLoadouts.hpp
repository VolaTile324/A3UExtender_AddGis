class planeLoadouts
{
    // It also has support for these parameters, though I haven't used them before.
    // mainGun
    // rocketLauncher[]
    // missileLauncher[]
    // bombRacks[]
    // diveParams[]
    class CASDIVE
    {
        //EF CDLC
        class EF_QAV80_MJTF_Des
        {
            loadout[] = {"EF_PylonMissile_Missile_Sidearm_x1","EF_PylonMissile_Missile_Sidearm_x1","PylonRack_Bomb_SDB_x4","PylonRack_Bomb_SDB_x4","PylonRack_2Rnd_BombCluster_03_F","PylonRack_Bomb_GBU12_x2","PylonMissile_Bomb_GBU12_x1","PylonMissile_1Rnd_BombCluster_01_F"};
            mainGun = "EF_gatling_25mm_QAV80";
            missileLauncher[] = {"EF_weapon_SidearmLauncher"};
            bombRacks[] = {"weapon_GBU12Launcher","weapon_SDBLauncher","BombCluster_03_F","BombCluster_01_F"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
        class EF_QAV80_MJTF_Wdl : EF_QAV80_MJTF_Des {};

        class EF_QAV80_Stealth_MJTF_Des
        {
            loadout[] = {"","","","","","","PylonMissile_1Rnd_BombCluster_01_F","PylonMissile_Bomb_GBU12_x1"};
            mainGun = "EF_gatling_25mm_QAV80";
            bombRacks[] = {"weapon_GBU12Launcher","BombCluster_01_F"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
        class EF_QAV80_Stealth_MJTF_Wdl : EF_QAV80_Stealth_MJTF_Des {};
    };

    class CAS
    {
        class EF_QAV80_MJTF_Des
        {
            loadout[] = {"EF_PylonMissile_Missile_Sidearm_x1","EF_PylonMissile_Missile_Sidearm_x1","PylonRack_7Rnd_Rocket_04_HE_F","PylonRack_7Rnd_Rocket_04_AP_F","PylonRack_Missile_HARM_x1","PylonRack_Missile_AGM_02_x2","PylonMissile_Bomb_GBU12_x1","PylonMissile_1Rnd_BombCluster_01_F"};
            mainGun = "EF_gatling_25mm_QAV80";
            missileLauncher[] = {"weapon_AGM_65Launcher", "EF_weapon_SidearmLauncher", "weapon_HARMLauncher"};
            rocketLauncher[] = {"Rocket_04_HE_Plane_CAS_01_F", "Rocket_04_AP_Plane_CAS_01_F"};
            bombRacks[] = {"weapon_GBU12Launcher", "weapon_SDBLauncher","BombCluster_03_F","BombCluster_01_F"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
        class EF_QAV80_MJTF_Wdl : EF_QAV80_MJTF_Des {};

        class EF_QAV80_Stealth_MJTF_Des
        {
            loadout[] = {"","","","","","","PylonMissile_Bomb_GBU12_x1","EF_PylonMissile_Missile_Sidearm_x1"};
            mainGun = "EF_gatling_25mm_QAV80";
            missileLauncher[] = {"EF_weapon_SidearmLauncher"};
            bombRacks[] = {"weapon_GBU12Launcher"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
        class EF_QAV80_Stealth_MJTF_Wdl : EF_QAV80_Stealth_MJTF_Des {};
    };
   
    class AA
    {
         //EF CDLC
        class EF_QAV80_MJTF_Des
        {
            loadout[] = {"PylonRack_1Rnd_Missile_AA_04_F","PylonRack_1Rnd_Missile_AA_04_F","PylonRack_Missile_AMRAAM_D_x1","PylonRack_Missile_AMRAAM_D_x1","PylonRack_Missile_AMRAAM_D_x1","PylonRack_Missile_AMRAAM_D_x1","PylonMissile_Bomb_GBU12_x1","PylonMissile_1Rnd_BombCluster_01_F"};
            mainGun = "EF_gatling_25mm_QAV80";
            missileLauncher[] = {"Missile_AA_04_Plane_CAS_01_F", "weapon_AMRAAMLauncher"};
            bombRacks[] = {"weapon_GBU12Launcher","BombCluster_01_F"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
        class EF_QAV80_MJTF_Wdl : EF_QAV80_MJTF_Des {};

        class EF_QAV80_Stealth_MJTF_Des
        {
            loadout[] = {"","","","","","","PylonRack_1Rnd_Missile_AA_04_F","PylonRack_1Rnd_Missile_AA_04_F"};
            mainGun = "EF_gatling_25mm_QAV80";
            missileLauncher[] = {"Missile_AA_04_Plane_CAS_01_F"};
        };
        class EF_QAV80_Stealth_MJTF_Wdl : EF_QAV80_Stealth_MJTF_Des {};
    };
};
