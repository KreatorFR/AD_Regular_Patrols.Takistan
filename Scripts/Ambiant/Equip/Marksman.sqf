removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

this forceAddUniform "U_B_FullGhillie_lsh";
for "_i" from 1 to 4 do {this addItemToUniform "11Rnd_45ACP_Mag";};
this addVest "V_PlateCarrierSpec_rgr";
for "_i" from 1 to 7 do {this addItemToVest "10Rnd_338_Mag";};
this addBackpack "B_Kitbag_mcamo";
for "_i" from 1 to 3 do {this addItemToBackpack "FirstAidKit";};
for "_i" from 1 to 2 do {this addItemToBackpack "10Rnd_338_Mag";};
for "_i" from 1 to 5 do {this addItemToBackpack "SmokeShellGreen";};
for "_i" from 1 to 5 do {this addItemToBackpack "Chemlight_green";};
this addItemToBackpack "B_IR_Grenade";
this addHeadgear "H_Watchcap_khk";
this addGoggles "G_Balaclava_oli";
this addWeapon "srifle_DMR_02_sniper_F";
this addPrimaryWeaponItem "muzzle_snds_338_sand";
this addPrimaryWeaponItem "acc_pointer_IR";
this addPrimaryWeaponItem "optic_AMS_snd";
this addPrimaryWeaponItem "bipod_01_F_snd";
this addWeapon "hgun_Pistol_heavy_01_F";
this addHandgunItem "muzzle_snds_acp";
this addHandgunItem "optic_MRD";
this addWeapon "Rangefinder";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "ItemGPS";
this linkItem "NVGoggles";