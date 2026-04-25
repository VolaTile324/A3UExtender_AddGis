    /*
        Each addon entry can use these values:
        addons[] = {};
        weapons = traderWeapons entry;
        vehicles = traderVehicles entry;

        Essentially, this is the core file. It links to other files.
    */
    
    class addons_ef : addons_base
    {
        addons[] = {"EF_Marines"};
        weapons = "weapons_ef";
        vehicles = "vehicles_ef";
    };