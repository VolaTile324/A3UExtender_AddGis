		class riflesEF
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_EF", localize "STR_A3AU_rifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(ef_arifle_mx_grip_black, 1250, RIFLE_STOCK);
			ITEM(ef_arifle_mx_grip, 1250, RIFLE_STOCK);
			ITEM(ef_arifle_mx_grip_khk, 1250, RIFLE_STOCK);
			ITEM(ef_arifle_mx_grip_coy, 1250, RIFLE_STOCK);
		};

		class smgEF
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_EF", localize "STR_A3AU_smgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(EF_smg_Diplomat, 500, RIFLE_STOCK);
			ITEM(EF_smg_Diplomat_Hex, 500, RIFLE_STOCK);
			ITEM(EF_smg_Diplomat_Ghex, 500, RIFLE_STOCK);
			ITEM(EF_smg_Diplomat_Coy, 500, RIFLE_STOCK);
		};

		class muzzlesEF
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_EF", localize "STR_A3AU_muzzles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";

			ITEM(ef_snds_mxar, 1000, MZ_STOCK);
			ITEM(ef_snds_mxar_coy, 1000, MZ_STOCK);
			ITEM(ef_snds_mxar_khk, 1000, MZ_STOCK);
			ITEM(ef_snds_mxar_sand, 1000, MZ_STOCK);

			ITEM(EF_smg_Diplomat_Coy, 600, MZ_STOCK);
			ITEM(ef_snds_diplomat_coy, 600, MZ_STOCK);
		};

		class magazinesEF
		{
			displayName = __EVAL(formatText["%1 %2", localize "STR_A3AU_EF", localize "STR_A3AU_magazines"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class EF_Diplomat_25Rnd_9x19_Coy_Mag
			{
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class EF_Diplomat_25Rnd_9x19_Mag
			{
				price = 100;
				stock = MAGAZINE_STOCK;
			};
		};