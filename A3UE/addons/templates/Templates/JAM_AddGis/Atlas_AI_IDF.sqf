private _hasWs = "ws" in A3A_enabledDLC;
private _hasRf = "rf" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

//////////////////////////
//   Side information  //
//////////////////////////

["name", "IDF"] call _fnc_saveToTemplate;
["spawnMarkerName", format [localize "STR_supportcorridor", "IDF"]] call _fnc_saveToTemplate;
["flag", "Flag_IDF_F"] call _fnc_saveToTemplate;
["flagTexture", "A3_Atlas\data_f_atlas\flags\flag_idf_co.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_IDF"] call _fnc_saveToTemplate;

//////////////////////////
//      Vehicles       //
//////////////////////////

["vehiclesSDV", ["I_SDV_01_F"]] call _fnc_saveToTemplate;

["vehiclesDropPod", ["SpaceshipCapsule_01_F"]] call _fnc_saveToTemplate;

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate;     
["surrenderCrate", "Box_NATO_Wps_F"] call _fnc_saveToTemplate; 
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; 

["vehiclesBasic", ["Atlas_I_I_Quadbike_01_F"]] call _fnc_saveToTemplate;

private _lightUnarmed = ["Atlas_I_I_MRAP_01_F"];
private _lightArmed = ["Atlas_I_I_MRAP_01_hmg_F", "Atlas_I_I_MRAP_01_gmg_F"];
if (_hasRf) then {
    _lightUnarmed append ["Atlas_I_I_Pickup_F", "Atlas_I_I_Pickup_Comms_F"];
    _lightArmed append ["Atlas_I_I_Pickup_AT_F", "Atlas_I_I_Pickup_HMG_F"];
};
["vehiclesLightUnarmed", _lightUnarmed] call _fnc_saveToTemplate;
["vehiclesLightArmed", _lightArmed] call _fnc_saveToTemplate;

["vehiclesTrucks", ["Atlas_I_I_Truck_01_transport_F", "Atlas_I_I_Truck_01_covered_F"]] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", ["Atlas_I_I_Truck_01_transport_F", "Atlas_I_I_Truck_01_covered_F", "Atlas_I_I_UGV_01_F"]] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", ["Atlas_I_I_Truck_01_ammo_F"]] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", ["Atlas_I_I_Truck_01_box_F", "Atlas_I_I_Truck_01_Repair_F"]] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", ["Atlas_I_I_Truck_01_fuel_F"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["Atlas_I_I_Truck_01_medical_F"]] call _fnc_saveToTemplate;
["vehiclesLightAPCs", ["Atlas_I_I_APC_Tracked_01_rcws_F", "Atlas_I_I_APC_Tracked_01_CRV_F"]] call _fnc_saveToTemplate;
["vehiclesAPCs", ["Atlas_I_I_APC_Tracked_01_rcws_F"]] call _fnc_saveToTemplate;
["vehiclesIFVs", ["Atlas_I_I_APC_Tracked_01_rcws_F"]] call _fnc_saveToTemplate;
["vehiclesAirborne", ["Atlas_I_I_MRAP_01_gmg_F", "Atlas_I_I_UGV_01_rcws_F"]] call _fnc_saveToTemplate;
["vehiclesLightTanks", ["Atlas_I_I_APC_Tracked_01_rcws_F", "Atlas_I_I_UGV_01_rcws_F"]] call _fnc_saveToTemplate;
["vehiclesTanks", ["Atlas_I_I_MBT_01_cannon_F", "AddGis_I_I_MBT_02_cannon_F"]] call _fnc_saveToTemplate;
private _vehiclesAA = ["Atlas_I_I_APC_Tracked_01_AA_F"];
if (_hasRF) then {
    _vehiclesAA append "Atlas_I_I_Pickup_aat_F";
};
["vehiclesAA", _vehiclesAA] call _fnc_saveToTemplate;

["vehiclesTransportBoats", ["I_Boat_Transport_01_F"]] call _fnc_saveToTemplate;
["vehiclesGunBoats", ["I_Boat_Armed_01_minigun_F"]] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", ["Atlas_I_I_Plane_Fighter_05_F"]] call _fnc_saveToTemplate;
["vehiclesPlanesAA", ["Atlas_I_I_Plane_Fighter_05_Stealth_F"]] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", ["Atlas_I_I_VTOL_01_infantry_F"]] call _fnc_saveToTemplate;
["vehiclesPlanesGunship", ["Atlas_I_I_VTOL_01_armed_F"]] call _fnc_saveToTemplate;

["vehiclesHelisTransport", ["Atlas_I_I_Heli_Transport_01_F"]] call _fnc_saveToTemplate;
["vehiclesHelisLight", ["Atlas_I_I_Heli_Light_01_F"]] call _fnc_saveToTemplate;
["vehiclesHelisLightAttack", ["Atlas_I_I_Heli_Light_01_dynamicLoadout_F"]] call _fnc_saveToTemplate;
["vehiclesHelisAttack", ["Atlas_I_I_Heli_Attack_01_dynamicLoadout_F"]] call _fnc_saveToTemplate;

["vehiclesArtillery", ["Atlas_I_I_MBT_01_arty_F"]] call _fnc_saveToTemplate;

["magazines", createHashMapFromArray [
    [Atlas_I_I_MBT_01_arty_F, ["32Rnd_155mm_Mo_shells", "2Rnd_155mm_Mo_Cluster"]]
]] call _fnc_saveToTemplate;

["uavsAttack", ["Atlas_I_I_UAV_03_dynamicLoadout_F", "Atlas_I_I_UAV_02_dynamicLoadout_F"]] call _fnc_saveToTemplate;
private _uavsPortable = if (_hasWs) then {["Atlas_I_I_UAV_02_lxWS", "Atlas_I_I_UAV_01_F"]} else {["Atlas_I_I_UAV_01_F"]};
["uavsPortable", _uavsPortable] call _fnc_saveToTemplate;

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities
private _vehiclesMilitiaLightArmed = ["Atlas_I_I_MRAP_01_hmg_F"];
if (_hasRf) then {
    _vehiclesMilitiaLightArmed pushBack "Atlas_I_I_Pickup_HMG_F";
};
["vehiclesMilitiaLightArmed", _vehiclesMilitiaLightArmed] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", ["Atlas_I_I_Truck_01_transport_F", "Atlas_I_I_Truck_01_covered_F"]] call _fnc_saveToTemplate;
private _vehiclesMilitiaCars = ["Atlas_I_I_MRAP_01_F"];
if (_hasRf) then {
    _vehiclesMilitiaCars append ["Atlas_I_I_Pickup_F", "Atlas_I_I_Pickup_Comms_F"];
};
["vehiclesMilitiaCars", _vehiclesMilitiaCars] call _fnc_saveToTemplate;
["vehiclesMilitiaAPCs", ["Atlas_I_I_APC_Tracked_01_CRV_F"]] call _fnc_saveToTemplate;

private _policeVehicles = if (_hasRf) then {
        ["Atlas_I_I_Pickup_F", "Atlas_I_I_Pickup_Comms_F"]
    } else {
        ["Atlas_I_I_MRAP_01_F"]
};

["vehiclesPolice", _policeVehicles] call _fnc_saveToTemplate;

["staticMGs", ["Atlas_I_I_HMG_02_high_F", "Atlas_I_I_HMG_01_high_F", "Atlas_I_I_HMG_01_high_F", "Atlas_I_I_GMG_01_high_F"]] call _fnc_saveToTemplate;
["staticAT", ["Atlas_I_I_Static_AT_F"]] call _fnc_saveToTemplate;
["staticAA", ["Atlas_I_I_Static_AA_F"]] call _fnc_saveToTemplate;
["staticMortars", ["Atlas_I_I_Mortar_01_F"]] call _fnc_saveToTemplate;
["staticHowitzers", []] call _fnc_saveToTemplate;

["vehicleRadar", "Atlas_I_I_Radar_System_01_F"] call _fnc_saveToTemplate;
["vehicleSam", "Atlas_I_I_SAM_System_03_F"] call _fnc_saveToTemplate;

["howitzerMagazineHE", ""] call _fnc_saveToTemplate;

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["mortarMagazineFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;


["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine", "APERSBoundingMine"]] call _fnc_saveToTemplate;

#include "Aegis_Vehicle_Attributes.sqf"

["variants", [
    [I_SDV_01_F, ["BLUFOR", 1]],
    [I_Boat_Transport_01_F, ["Black", 1]],
    [I_Boat_Armed_01_minigun_F, ["Russia", 1]],
]] call _fnc_saveToTemplate;

["animations", [
    ["Atlas_I_I_APC_Tracked_01_CRV_F", ["showBags",0,"showAmmobox",0.3,"showCamonetHull",0.3,"showWheels",0]],
    ["Atlas_I_I_APC_Tracked_01_rcws_F", ["showBags",0,"showCamonetHull",0.3]],
    ["Atlas_I_I_APC_Tracked_01_AA_F", ["showBags",0,"showCamonetHull",0.3, "showCamonetTurret",0.3]],
    ["Atlas_I_I_MBT_01_cannon_F", ["showCamonetHull",0.3,"showCamonetTurret",0.3]],
    ["AddGis_I_I_MBT_02_cannon_F", ["showCamonetHull",0.3,"showCamonetTurret",0.3]],
]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

["voices", ["Male01GRE", "Male02GRE", "Male03GRE", "Male04GRE", "Male05GRE", "Male06GRE"]] call _fnc_saveToTemplate;
["faces", ["WhiteHead_18", "WhiteHead_33", "GreekHead_A3_12", "WhiteHead_05", "LivonianHead_9",
    "LivonianHead_8", "WhiteHead_11", "GreekHead_A3_14", "LivonianHead_10", "WhiteHead_16", "Kerry_C_F",
    "GreekHead_A3_09", "Mavros", "LivonianHead_7"
    ]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

