class Templates 
{
    /*
        A "Class" literally just stores things. It by itself does not do anything.

        In the case of Antistasi, most of the scripts will grab all classes from the corresponding configs.

        Say we have a function that grabs all factions and displays their name. These classes exist as storage and key-value pairs basically.
    */

    class Atlas_IDF : Aegis_Base
    {
        basepath = QPATHTOFOLDER(Templates\Aegis);
        side = "Inv";
        name = "Atlas IDF";
        file = "Atlas_AI_IDF";
        flagTexture = QPATHTOFOLDER(A3_Atlas\data_f_atlas\flags\flag_idf_co.paa);
        description = $STR_Atlas_IDF_description;
    };

    class Atlas_IDF_Arid : Atlas_IDF
    {
        name = "Atlas IDF Arid";
        file = "Atlas_AI_IDF_Arid";
        climate[] = {"arid"};
    };
};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/