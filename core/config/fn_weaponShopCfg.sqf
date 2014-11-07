#include <macro.h>
/*
        File: fn_weaponShopCfg.sqf
        Author: Bryan "Tonic" Boardwine
       
        Description:
        Master configuration file for the weapon shops.
       
        Return:
        String: Close the menu
        Array:
        [Shop Name,
        [ //Array of items to add to the store
                [classname,Custom Name (set nil for default),price]
        ]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.
 
switch(_shop) do
{
 
//Cop Levels
        case "cop_basic":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        default
                        {
                                ["Altis Cop Shop",
                                        [
                                                ["arifle_sdar_F","Taser Rifle",20000],
                                                ["hgun_P07_snds_F","Stun Pistol",2000],
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                ["ToolKit",nil,0],
                                                ["ItemMap",nil,0],
                                                ["FirstAidKit",nil,0],
                                                ["MediKit",nil,5000],
                                                ["Rangefinder",nil,7500],
                                                ["NVGoggles",nil,0],
                                                ["MineDetector",nil,550],
                                                ["16Rnd_9x21_Mag",nil,50],
                                                ["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125]
                                        ]
                                ];
                        };
                };
        };
       
 
        case "cop_patrol":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
                        default
                        {
                                ["Altis Patrol Officer Shop",
                                        [
                                                ["arifle_TRG20_F",nil,35000],
                                                ["SMG_02_ACO_F",nil,30000],
                                                ["MineDetector",nil,1000],
                                                ["acc_flashlight",nil,750],
                                                ["optic_Holosight",nil,1200],
                                                ["optic_Arco",nil,2500],
                                                ["muzzle_snds_H",nil,2750],
                                                ["30Rnd_556x45_Stanag_Tracer_Green",nil,130],
                                                ["30Rnd_9x21_Mag",nil,250],["ToolKit",nil,0],
                                                ["itemgps",nil,0],
                                                ["ItemMap",nil,0],
                                                ["FirstAidKit",nil,0],
                                                ["MediKit",nil,5000],
                                                ["Rangefinder",nil,7500],
                                                ["NVGoggles",nil,0],
                                                ["MineDetector",nil,550]
                                        ]
                                ];
                        };
                };
        };
 
        case "cop_spatrol":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 3): {"You are not a Senior Patrol Officer!"};
                        default
                        {
                                ["Arcadia PD Senior Patrol Officer Shop",
                                        [
                                                ["SMG_02_ACO_F",nil,15000],
                                                ["hgun_ACPC2_F",nil,17500],
                                                ["arifle_MXC_F",nil,30000],
                                                ["optic_Arco",nil,2500],
                                                ["muzzle_snds_H",nil,2750],
                                                ["30Rnd_65x39_caseless_mag",nil,100],
                                                ["30Rnd_9x21_Mag",nil,60],
                                                ["9Rnd_45ACP_Mag",nil,200],
                                                ["ToolKit",nil,0],
                                                ["itemgps",nil,0],
                                                ["ItemMap",nil,0],
                                                ["FirstAidKit",nil,0],
                                                ["MediKit",nil,5000],
                                                ["Rangefinder",nil,7500],
                                                ["NVGoggles",nil,0],
                                                ["MineDetector",nil,550]
                                        ]
                                ];
                        };
                };
        };
       
        case "cop_sergeant":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 4): {"You are not a Sergeant rank!"};
                        default
                        {
                                ["Arcadia PD Altis Sergeant Shop",
                                        [
                                                ["SMG_02_ACO_F",nil,15000],
                                                ["hgun_ACPC2_F",nil,17500],
                                                ["HandGrenade_Stone","Flashbang",1700],
                                                ["arifle_MXM_Hamr_pointer_F",nil,30000],
                                                ["launch_RPG32_F",nil,50000],
                                                ["RPG32_F",nil,500],
                                                ["optic_Arco",nil,2500],
                                                ["muzzle_snds_H",nil,2750],
                                                ["30Rnd_65x39_caseless_mag",nil,100],
                                                ["30Rnd_9x21_Mag",nil,60],
                                                ["9Rnd_45ACP_Mag",nil,200],
                                                ["optic_Nightstalker",nil,500],
                        ["optic_SOS",nil,500],
                        ["optic_LRPS",nil,500],
                        ["optic_DMS",nil,500],
                        ["optic_MRCO",nil,500],
                        ["optic_Arco",nil,500],
                        ["optic_ACO_grn",nil,500],
                        ["optic_Aco",nil,500],
                        ["optic_Aco_smg",nil,500],
                        ["optic_ACO_grn_smg",nil,500],
                        ["optic_Holosight",nil,500],
                        ["optic_Holosight_smg",nil,500],
                        ["optic_Hamr",nil,500],
                        ["optic_Yorris",nil,500],
                        ["acc_flashlight",nil,500],
                        ["acc_pointer_IR",nil,500],
                        ["muzzle_snds_B",nil,500],
                        ["muzzle_snds_H",nil,500],
                        ["muzzle_snds_B",nil,500],
                        ["muzzle_snds_L",nil,500],
                        ["muzzle_snds_acp",nil,500],
                                                ["ToolKit",nil,0],
                                                ["itemgps",nil,0],
                                                ["ItemMap",nil,0],
                                                ["FirstAidKit",nil,0],
                                                ["MediKit",nil,5000],
                                                ["Rangefinder",nil,7500],
                                                ["NVGoggles",nil,0],
                                                ["MineDetector",nil,550],
                        ["SmokeShell",nil,500],
                        ["MiniGrenade",nil,500],
                        ["HandGrenade",nil,500],
                        ["Chemlight_red",nil,500],
                        ["Chemlight_green",nil,500]
                                        ]
                                ];
                        };
                };
        };
       
        case "cop_lieutenant":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 5): {"You are not a Lieutenant!"};
                        default
                        {
                                ["Arcadia PD Altis Lieutenant Shop",
                                        [
                                                ["SMG_02_ACO_F",nil,15000],
                                                ["hgun_ACPC2_F",nil,17500],
                                                ["HandGrenade_Stone","Flashbang",1700],
                                                ["srifle_LRR_F",nil,50000],
                                                ["7Rnd_408_Mag",nil,100],
                                                ["LMG_Mk200_pointer_F",nil,30000],
                                                ["launch_RPG32_F",nil,50000],
                                                ["RPG32_F",nil,500],
                                                ["optic_Arco",nil,2500],
                                                ["200Rnd_65x39_cased_Box_Tracer",nil,100],
                                                ["30Rnd_9x21_Mag",nil,60],
                                                ["9Rnd_45ACP_Mag",nil,200],
                                                ["optic_Nightstalker",nil,500],
                        ["optic_SOS",nil,500],
                        ["optic_LRPS",nil,500],
                        ["optic_DMS",nil,500],
                        ["optic_MRCO",nil,500],
                        ["optic_Arco",nil,500],
                        ["optic_ACO_grn",nil,500],
                        ["optic_Aco",nil,500],
                        ["optic_Aco_smg",nil,500],
                        ["optic_ACO_grn_smg",nil,500],
                        ["optic_Holosight",nil,500],
                        ["optic_Holosight_smg",nil,500],
                        ["optic_Hamr",nil,500],
                        ["optic_Yorris",nil,500],
                        ["acc_flashlight",nil,500],
                        ["acc_pointer_IR",nil,500],
                        ["muzzle_snds_B",nil,500],
                        ["muzzle_snds_H",nil,500],
                        ["muzzle_snds_B",nil,500],
                        ["muzzle_snds_L",nil,500],
                        ["muzzle_snds_acp",nil,500],
                                                ["ToolKit",nil,0],
                                                ["itemgps",nil,0],
                                                ["ItemMap",nil,0],
                                                ["FirstAidKit",nil,0],
                                                ["MediKit",nil,5000],
                                                ["Rangefinder",nil,7500],
                                                ["NVGoggles",nil,0],
                                                ["MineDetector",nil,550],
                        ["SmokeShell",nil,500],
                        ["MiniGrenade",nil,500],
                        ["HandGrenade",nil,500],
                        ["Chemlight_red",nil,500],
                        ["Chemlight_green",nil,500]
                                        ]
                                ];
                        };
                };
        };
       
        case "cop_captian":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 6): {"You are not a Captian!"};
                        default
                        {
                                ["Arcadia PD Captian Shop",
                                        [
                                                ["SMG_02_ACO_F",nil,15000],
                                                ["hgun_ACPC2_F",nil,17500],
                                                ["HandGrenade_Stone","Flashbang",1700],
                                                ["launch_NLAW_F","If Used Follow Protocol",50000],
                                                ["NLAW_F",nil,500],
                                                ["srifle_EBR_ARCO_pointer_snds_F",nil,30000],
                                                ["20Rnd_762x51_Mag",nil,100],
                                                ["srifle_GM6_F",nil,50000],
                                                ["5Rnd_127x108_APDS_Mag",nil,100],
                                                ["srifle_LRR_F",nil,50000],
                                                ["7Rnd_408_Mag",nil,100],
                                                ["optic_Arco",nil,2500],
                                                ["muzzle_snds_H",nil,2750],
                                                ["30Rnd_9x21_Mag",nil,60],
                                                ["9Rnd_45ACP_Mag",nil,200],
                                                ["optic_Nightstalker",nil,500],
                        ["optic_SOS",nil,500],
                        ["optic_LRPS",nil,500],
                        ["optic_DMS",nil,500],
                        ["optic_MRCO",nil,500],
                        ["optic_Arco",nil,500],
                        ["optic_ACO_grn",nil,500],
                        ["optic_Aco",nil,500],
                        ["optic_Aco_smg",nil,500],
                        ["optic_ACO_grn_smg",nil,500],
                        ["optic_Holosight",nil,500],
                        ["optic_Holosight_smg",nil,500],
                        ["optic_Hamr",nil,500],
                        ["optic_Yorris",nil,500],
                        ["acc_flashlight",nil,500],
                        ["acc_pointer_IR",nil,500],
                        ["muzzle_snds_B",nil,500],
                        ["muzzle_snds_H",nil,500],
                        ["muzzle_snds_B",nil,500],
                        ["muzzle_snds_L",nil,500],
                        ["muzzle_snds_acp",nil,500],
                                                ["ToolKit",nil,0],
                                                ["itemgps",nil,0],
                                                ["ItemMap",nil,0],
                                                ["FirstAidKit",nil,0],
                                                ["MediKit",nil,5000],
                                                ["Rangefinder",nil,7500],
                                                ["NVGoggles",nil,0],
                                                ["MineDetector",nil,550],
                        ["SmokeShell",nil,500],
                        ["MiniGrenade",nil,500],
                        ["HandGrenade",nil,500],
                        ["B_IR_Grenade",nil,500],
                        ["I_IR_Grenade",nil,500],
                        ["O_IR_Grenade",nil,500],
                        ["APERSTripMine_Wire_Mag",nil,500],
                        ["SatchelCharge_Remote_Mag",nil,000],
                        ["SLAMDirectionalMine_Wire_Mag",nil,500],
                        ["APERSBoundingMine_Range_Mag",nil,500],
                        ["APERSMine_Range_Mag",nil,500],
                        ["ClaymoreDirectionalMine_Remote_Mag",nil,500],
                        ["ATMine_Range_Mag",nil,500],
                        ["Chemlight_red",nil,500],
                        ["Chemlight_green",nil,500]
                                        ]
                                ];
                        };
                };
        };
       
        case "cop_commissioner":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 7): {"You are not a Commissioner!"};
                        default
                        {
                                ["Arcadia PD Commissioner Shop",
                                        [
                                                ["SMG_02_ACO_F",nil,15000],
                                                ["hgun_ACPC2_F",nil,17500],
                                                ["HandGrenade_Stone","Flashbang",1700],
                                                ["launch_NLAW_F","If Used Follow Protocol",50000],
                                                ["NLAW_F",nil,500],
                                                ["srifle_EBR_ARCO_pointer_snds_F",nil,30000],
                                                ["20Rnd_762x51_Mag",nil,100],
                                                ["srifle_GM6_F",nil,50000],
                                                ["5Rnd_127x108_APDS_Mag",nil,100],
                                                ["optic_Arco",nil,2500],
                                                ["muzzle_snds_H",nil,2750],
                                                ["30Rnd_9x21_Mag",nil,60],
                                                ["9Rnd_45ACP_Mag",nil,200],
                                                ["optic_Nightstalker",nil,500],
                        ["optic_SOS",nil,500],
                        ["optic_LRPS",nil,500],
                        ["optic_DMS",nil,500],
                        ["optic_MRCO",nil,500],
                        ["optic_Arco",nil,500],
                        ["optic_ACO_grn",nil,500],
                        ["optic_Aco",nil,500],
                        ["optic_Aco_smg",nil,500],
                        ["optic_ACO_grn_smg",nil,500],
                        ["optic_Holosight",nil,500],
                        ["optic_Holosight_smg",nil,500],
                        ["optic_Hamr",nil,500],
                        ["optic_Yorris",nil,500],
                        ["acc_flashlight",nil,500],
                        ["acc_pointer_IR",nil,500],
                        ["muzzle_snds_B",nil,500],
                        ["muzzle_snds_H",nil,500],
                        ["muzzle_snds_B",nil,500],
                        ["muzzle_snds_L",nil,500],
                        ["muzzle_snds_acp",nil,500],
                                                ["ToolKit",nil,0],
                                                ["itemgps",nil,0],
                                                ["ItemMap",nil,0],
                                                ["FirstAidKit",nil,0],
                                                ["MediKit",nil,5000],
                                                ["Rangefinder",nil,7500],
                                                ["NVGoggles",nil,0],
                                                ["MineDetector",nil,550],
                        ["SmokeShell",nil,500],
                        ["MiniGrenade",nil,500],
                        ["HandGrenade",nil,500],
                        ["B_IR_Grenade",nil,500],
                        ["I_IR_Grenade",nil,500],
                        ["O_IR_Grenade",nil,500],
                        ["APERSTripMine_Wire_Mag",nil,500],
                        ["SatchelCharge_Remote_Mag",nil,000],
                        ["SLAMDirectionalMine_Wire_Mag",nil,500],
                        ["APERSBoundingMine_Range_Mag",nil,500],
                        ["APERSMine_Range_Mag",nil,500],
                        ["ClaymoreDirectionalMine_Remote_Mag",nil,500],
                        ["ATMine_Range_Mag",nil,500],
                        ["Chemlight_red",nil,500],
                        ["Chemlight_green",nil,500]
                                        ]
                                ];
                        };
                };
        };
       
        case "cop_swat":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 8): {"You are not a SWAT Member!"};
                        default
                        {
                                ["Arcadia PD SWAT Lockbox",
                                        [
                                                ["launch_RPG32_F",nil,500],
                        ["RPG32_F",nil,500],
                        ["RPG32_HE_F",nil,500],
                        ["launch_NLAW_F",nil,500],
                        ["NLAW_F",nil,500],
                        ["launch_Titan_F",nil,500],
                        ["Titan_AA",nil,500],
                        ["launch_Titan_short_F",nil,500],
                        ["Titan_AT",nil,500],
                        ["Titan_AP",nil,500],
                        ["srifle_LRR_F",nil,500],
                        ["srifle_GM6_F",nil,500],
                        ["5Rnd_127x108_APDS_Mag",nil,500],
                        ["5Rnd_127x108_Mag",nil,500],
                        ["arifle_MXC_Black_F",nil,500],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,500],
                        ["arifle_MX_Black_F",nil,500],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,500],
                        ["arifle_MX_GL_Black_F",nil,500],
                        ["3Rnd_HE_Grenade_shell",nil,500],
                        ["arifle_MX_SW_Black_F",nil,500],
                        ["100Rnd_65x39_caseless_mag_Tracer",nil,500],
                        ["arifle_MXM_Black_F",nil,500],
                        ["30Rnd_65x39_caseless_mag",nil,500],
                        ["arifle_MXM_F",nil,500],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,500],
                        ["30Rnd_65x39_caseless_mag",nil,500],
                        ["srifle_EBR_F",nil,500],
                        ["20Rnd_762x51_Mag",nil,500],
                        ["LMG_Zafir_F",nil,500],
                        ["150Rnd_762x51_Box_Tracer",nil,500],
                        ["150Rnd_762x51_Box",nil,500],
                        ["LMG_Mk200_F",nil,500],
                        ["200Rnd_65x39_cased_Box_Tracer",nil,500],
                        ["200Rnd_65x39_cased_Box",nil,500],
                        ["arifle_MXC_F",nil,500],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,500],
                        ["arifle_MX_F",nil,500],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,500],
                        ["arifle_MX_GL_F",nil,500],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,500],
                        ["UGL_FlareGreen_F",nil,500],
                        ["UGL_FlareRed_F",nil,500],
                        ["3Rnd_HE_Grenade_shell",nil,500],
                        ["3Rnd_UGL_FlareRed_F",nil,500],
                        ["3Rnd_UGL_FlareGreen_F",nil,500],
                        ["arifle_MX_SW_F",nil,500],
                        ["100Rnd_65x39_caseless_mag_Tracer",nil,50000],
                        ["arifle_Katiba_F",nil,500],
                        ["30Rnd_65x39_caseless_green",nil,500],
                        ["arifle_TRG20_F",nil,500],
                        ["30Rnd_556x45_Stanag_Tracer_Red",nil,500],
                        ["arifle_Mk20C_F",nil,500],
                        ["30Rnd_556x45_Stanag_Tracer_Red",nil,500],
                        ["srifle_DMR_01_F",nil,500],
                        ["hgun_PDW2000_F",nil,500],
                        ["30Rnd_9x21_Mag",nil,500],
                        ["SMG_02_F",nil,500],
                        ["30Rnd_9x21_Mag",nil,500],
                        ["SMG_01_F",nil,500],
                        ["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,500],
                        ["hgun_Pistol_heavy_02_F",nil,500],
                        ["6Rnd_45ACP_Cylinder",nil,500],
                        ["hgun_P07_F",nil,500],
                        ["30Rnd_9x21_Mag",nil,500],
                        ["hgun_Rook40_F",nil,500],
                        ["30Rnd_9x21_Mag",nil,500],
                        ["hgun_Pistol_heavy_01_MRD_F",nil,500],
                        ["11Rnd_45ACP_Mag",nil,500],
                        ["optic_Nightstalker",nil,500],
                        ["optic_SOS",nil,500],
                        ["optic_LRPS",nil,500],
                        ["optic_DMS",nil,500],
                        ["optic_MRCO",nil,500],
                        ["optic_Arco",nil,500],
                        ["optic_ACO_grn",nil,500],
                        ["optic_Aco",nil,500],
                        ["optic_Aco_smg",nil,500],
                        ["optic_ACO_grn_smg",nil,500],
                        ["optic_Holosight",nil,500],
                        ["optic_Holosight_smg",nil,500],
                        ["optic_Hamr",nil,500],
                        ["optic_Yorris",nil,500],
                        ["acc_flashlight",nil,500],
                        ["acc_pointer_IR",nil,500],
                        ["muzzle_snds_B",nil,500],
                        ["muzzle_snds_H",nil,500],
                        ["muzzle_snds_B",nil,500],
                        ["muzzle_snds_L",nil,500],
                        ["muzzle_snds_acp",nil,500],
                                                ["ToolKit",nil,0],
                                                ["itemgps",nil,0],
                                                ["ItemMap",nil,0],
                                                ["FirstAidKit",nil,0],
                                                ["MediKit",nil,5000],
                                                ["Rangefinder",nil,7500],
                                                ["NVGoggles",nil,0],
                                                ["MineDetector",nil,550],
                        ["SmokeShell",nil,500],
                        ["MiniGrenade",nil,500],
                        ["HandGrenade",nil,500],
                        ["B_IR_Grenade",nil,500],
                        ["I_IR_Grenade",nil,500],
                        ["O_IR_Grenade",nil,500],
                        ["APERSTripMine_Wire_Mag",nil,500],
                        ["SatchelCharge_Remote_Mag",nil,000],
                        ["SLAMDirectionalMine_Wire_Mag",nil,500],
                        ["APERSBoundingMine_Range_Mag",nil,500],
                        ["APERSMine_Range_Mag",nil,500],
                        ["ClaymoreDirectionalMine_Remote_Mag",nil,500],
                        ["ATMine_Range_Mag",nil,500],
                        ["Chemlight_red",nil,500],
                        ["Chemlight_green",nil,500]
                                        ]
                                ];
                        };
                };
        };
       
        case "cop_nato":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 9): {"You are not apart of the NATO!"};
                        default
                        {
                                ["Arcadia PD NATO Shop",
                                        [
                                                ["launch_RPG32_F",nil,500],
                        ["RPG32_F",nil,500],
                        ["RPG32_HE_F",nil,500],
                        ["launch_NLAW_F",nil,500],
                        ["NLAW_F",nil,500],
                        ["launch_Titan_F",nil,500],
                        ["Titan_AA",nil,500],
                        ["launch_Titan_short_F",nil,500],
                        ["Titan_AT",nil,500],
                        ["Titan_AP",nil,500],
                        ["srifle_LRR_F",nil,500],
                        ["srifle_GM6_F",nil,500],
                        ["5Rnd_127x108_APDS_Mag",nil,500],
                        ["5Rnd_127x108_Mag",nil,500],
                        ["arifle_MXC_Black_F",nil,500],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,500],
                        ["arifle_MX_Black_F",nil,500],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,500],
                        ["arifle_MX_GL_Black_F",nil,500],
                        ["3Rnd_HE_Grenade_shell",nil,500],
                        ["arifle_MX_SW_Black_F",nil,500],
                        ["100Rnd_65x39_caseless_mag_Tracer",nil,500],
                        ["arifle_MXM_Black_F",nil,500],
                        ["30Rnd_65x39_caseless_mag",nil,500],
                        ["arifle_MXM_F",nil,500],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,500],
                        ["30Rnd_65x39_caseless_mag",nil,500],
                        ["srifle_EBR_F",nil,500],
                        ["20Rnd_762x51_Mag",nil,500],
                        ["LMG_Zafir_F",nil,500],
                        ["150Rnd_762x51_Box_Tracer",nil,500],
                        ["150Rnd_762x51_Box",nil,500],
                        ["LMG_Mk200_F",nil,500],
                        ["200Rnd_65x39_cased_Box_Tracer",nil,500],
                        ["200Rnd_65x39_cased_Box",nil,500],
                        ["arifle_MXC_F",nil,500],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,500],
                        ["arifle_MX_F",nil,500],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,500],
                        ["arifle_MX_GL_F",nil,500],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,500],
                        ["UGL_FlareGreen_F",nil,500],
                        ["UGL_FlareRed_F",nil,500],
                        ["3Rnd_HE_Grenade_shell",nil,500],
                        ["3Rnd_UGL_FlareRed_F",nil,500],
                        ["3Rnd_UGL_FlareGreen_F",nil,500],
                        ["arifle_MX_SW_F",nil,500],
                        ["100Rnd_65x39_caseless_mag_Tracer",nil,50000],
                        ["arifle_Katiba_F",nil,500],
                        ["30Rnd_65x39_caseless_green",nil,500],
                        ["arifle_TRG20_F",nil,500],
                        ["30Rnd_556x45_Stanag_Tracer_Red",nil,500],
                        ["arifle_Mk20C_F",nil,500],
                        ["30Rnd_556x45_Stanag_Tracer_Red",nil,500],
                        ["srifle_DMR_01_F",nil,500],
                        ["hgun_PDW2000_F",nil,500],
                        ["30Rnd_9x21_Mag",nil,500],
                        ["SMG_02_F",nil,500],
                        ["30Rnd_9x21_Mag",nil,500],
                        ["SMG_01_F",nil,500],
                        ["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,500],
                        ["hgun_Pistol_heavy_02_F",nil,500],
                        ["6Rnd_45ACP_Cylinder",nil,500],
                        ["hgun_P07_F",nil,500],
                        ["30Rnd_9x21_Mag",nil,500],
                        ["hgun_Rook40_F",nil,500],
                        ["30Rnd_9x21_Mag",nil,500],
                        ["hgun_Pistol_heavy_01_MRD_F",nil,500],
                        ["11Rnd_45ACP_Mag",nil,500],
                        ["optic_Nightstalker",nil,500],
                        ["optic_SOS",nil,500],
                        ["optic_LRPS",nil,500],
                        ["optic_DMS",nil,500],
                        ["optic_MRCO",nil,500],
                        ["optic_Arco",nil,500],
                        ["optic_ACO_grn",nil,500],
                        ["optic_Aco",nil,500],
                        ["optic_Aco_smg",nil,500],
                        ["optic_ACO_grn_smg",nil,500],
                        ["optic_Holosight",nil,500],
                        ["optic_Holosight_smg",nil,500],
                        ["optic_Hamr",nil,500],
                        ["optic_Yorris",nil,500],
                        ["acc_flashlight",nil,500],
                        ["acc_pointer_IR",nil,500],
                        ["muzzle_snds_B",nil,500],
                        ["muzzle_snds_H",nil,500],
                        ["muzzle_snds_B",nil,500],
                        ["muzzle_snds_L",nil,500],
                        ["muzzle_snds_acp",nil,500],
                                                ["ToolKit",nil,0],
                                                ["itemgps",nil,0],
                                                ["ItemMap",nil,0],
                                                ["FirstAidKit",nil,0],
                                                ["MediKit",nil,5000],
                                                ["Rangefinder",nil,7500],
                                                ["NVGoggles",nil,0],
                                                ["MineDetector",nil,550],
                        ["SmokeShell",nil,500],
                        ["MiniGrenade",nil,500],
                        ["HandGrenade",nil,500],
                        ["B_IR_Grenade",nil,500],
                        ["I_IR_Grenade",nil,500],
                        ["O_IR_Grenade",nil,500],
                        ["APERSTripMine_Wire_Mag",nil,500],
                        ["SatchelCharge_Remote_Mag",nil,000],
                        ["SLAMDirectionalMine_Wire_Mag",nil,500],
                        ["APERSBoundingMine_Range_Mag",nil,500],
                        ["APERSMine_Range_Mag",nil,500],
                        ["ClaymoreDirectionalMine_Remote_Mag",nil,500],
                        ["ATMine_Range_Mag",nil,500],
                        ["Chemlight_red",nil,500],
                        ["Chemlight_green",nil,500]
                                        ]
                                ];
                        };
                };
        };
       
        case "cop_Dep":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 10): {"You are not the Chief Of Police!"};
                        default
                        {
                                ["Altis Deputy Shop",
                                        [
                                                ["launch_RPG32_F",nil,500],
                        ["RPG32_F",nil,500],
                        ["RPG32_HE_F",nil,500],
                        ["launch_NLAW_F",nil,500],
                        ["NLAW_F",nil,500],
                        ["launch_Titan_F",nil,500],
                        ["Titan_AA",nil,500],
                        ["launch_Titan_short_F",nil,500],
                        ["Titan_AT",nil,500],
                        ["Titan_AP",nil,500],
                        ["srifle_LRR_F",nil,500],
                        ["srifle_GM6_F",nil,500],
                        ["5Rnd_127x108_APDS_Mag",nil,500],
                        ["5Rnd_127x108_Mag",nil,500],
                        ["arifle_MXC_Black_F",nil,500],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,500],
                        ["arifle_MX_Black_F",nil,500],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,500],
                        ["arifle_MX_GL_Black_F",nil,500],
                        ["3Rnd_HE_Grenade_shell",nil,500],
                        ["arifle_MX_SW_Black_F",nil,500],
                        ["100Rnd_65x39_caseless_mag_Tracer",nil,500],
                        ["arifle_MXM_Black_F",nil,500],
                        ["30Rnd_65x39_caseless_mag",nil,500],
                        ["arifle_MXM_F",nil,500],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,500],
                        ["30Rnd_65x39_caseless_mag",nil,500],
                        ["srifle_EBR_F",nil,500],
                        ["20Rnd_762x51_Mag",nil,500],
                        ["LMG_Zafir_F",nil,500],
                        ["150Rnd_762x51_Box_Tracer",nil,500],
                        ["150Rnd_762x51_Box",nil,500],
                        ["LMG_Mk200_F",nil,500],
                        ["200Rnd_65x39_cased_Box_Tracer",nil,500],
                        ["200Rnd_65x39_cased_Box",nil,500],
                        ["arifle_MXC_F",nil,500],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,500],
                        ["arifle_MX_F",nil,500],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,500],
                        ["arifle_MX_GL_F",nil,500],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,500],
                        ["UGL_FlareGreen_F",nil,500],
                        ["UGL_FlareRed_F",nil,500],
                        ["3Rnd_HE_Grenade_shell",nil,500],
                        ["3Rnd_UGL_FlareRed_F",nil,500],
                        ["3Rnd_UGL_FlareGreen_F",nil,500],
                        ["arifle_MX_SW_F",nil,500],
                        ["100Rnd_65x39_caseless_mag_Tracer",nil,50000],
                        ["arifle_Katiba_F",nil,500],
                        ["30Rnd_65x39_caseless_green",nil,500],
                        ["arifle_TRG20_F",nil,500],
                        ["30Rnd_556x45_Stanag_Tracer_Red",nil,500],
                        ["arifle_Mk20C_F",nil,500],
                        ["30Rnd_556x45_Stanag_Tracer_Red",nil,500],
                        ["srifle_DMR_01_F",nil,500],
                        ["hgun_PDW2000_F",nil,500],
                        ["30Rnd_9x21_Mag",nil,500],
                        ["SMG_02_F",nil,500],
                        ["30Rnd_9x21_Mag",nil,500],
                        ["SMG_01_F",nil,500],
                        ["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,500],
                        ["hgun_Pistol_heavy_02_F",nil,500],
                        ["6Rnd_45ACP_Cylinder",nil,500],
                        ["hgun_P07_F",nil,500],
                        ["30Rnd_9x21_Mag",nil,500],
                        ["hgun_Rook40_F",nil,500],
                        ["30Rnd_9x21_Mag",nil,500],
                        ["hgun_Pistol_heavy_01_MRD_F",nil,500],
                        ["11Rnd_45ACP_Mag",nil,500],
                        ["optic_Nightstalker",nil,500],
                        ["optic_SOS",nil,500],
                        ["optic_LRPS",nil,500],
                        ["optic_DMS",nil,500],
                        ["optic_MRCO",nil,500],
                        ["optic_Arco",nil,500],
                        ["optic_ACO_grn",nil,500],
                        ["optic_Aco",nil,500],
                        ["optic_Aco_smg",nil,500],
                        ["optic_ACO_grn_smg",nil,500],
                        ["optic_Holosight",nil,500],
                        ["optic_Holosight_smg",nil,500],
                        ["optic_Hamr",nil,500],
                        ["optic_Yorris",nil,500],
                        ["acc_flashlight",nil,500],
                        ["acc_pointer_IR",nil,500],
                        ["muzzle_snds_B",nil,500],
                        ["muzzle_snds_H",nil,500],
                        ["muzzle_snds_B",nil,500],
                        ["muzzle_snds_L",nil,500],
                        ["muzzle_snds_acp",nil,500],
                                                ["ToolKit",nil,0],
                                                ["itemgps",nil,0],
                                                ["ItemMap",nil,0],
                                                ["FirstAidKit",nil,0],
                                                ["MediKit",nil,5000],
                                                ["Rangefinder",nil,7500],
                                                ["NVGoggles",nil,0],
                                                ["MineDetector",nil,550],
                        ["SmokeShell",nil,500],
                        ["MiniGrenade",nil,500],
                        ["HandGrenade",nil,500],
                        ["B_IR_Grenade",nil,500],
                        ["I_IR_Grenade",nil,500],
                        ["O_IR_Grenade",nil,500],
                        ["APERSTripMine_Wire_Mag",nil,500],
                        ["SatchelCharge_Remote_Mag",nil,000],
                        ["SLAMDirectionalMine_Wire_Mag",nil,500],
                        ["APERSBoundingMine_Range_Mag",nil,500],
                        ["APERSMine_Range_Mag",nil,500],
                        ["ClaymoreDirectionalMine_Remote_Mag",nil,500],
                        ["ATMine_Range_Mag",nil,500],
                        ["Chemlight_red",nil,500],
                        ["Chemlight_green",nil,500]
                                        ]
                                ];
                        };
                };
        };
 
        case "cop_Chief":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 11): {"You are not the Chief Of Police!"};
                        default
                        {
                                ["Altis Chief Shop",
                                        [
                        ["launch_RPG32_F",nil,50000],
                        ["RPG32_F",nil,50000],
                        ["RPG32_HE_F",nil,50000],
                        ["launch_NLAW_F",nil,50000],
                        ["NLAW_F",nil,50000],
                        ["launch_Titan_F",nil,50000],
                        ["Titan_AA",nil,50000],
                        ["launch_Titan_short_F",nil,50000],
                        ["Titan_AT",nil,50000],
                        ["Titan_AP",nil,50000],
                        ["srifle_LRR_F",nil,50000],
                        ["srifle_GM6_F",nil,50000],
                        ["5Rnd_127x108_APDS_Mag",nil,50000],
                        ["5Rnd_127x108_Mag",nil,50000],
                        ["arifle_MXC_Black_F",nil,50000],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,50000],
                        ["arifle_MX_Black_F",nil,50000],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,50000],
                        ["arifle_MX_GL_Black_F",nil,50000],
                        ["3Rnd_HE_Grenade_shell",nil,50000],
                        ["arifle_MX_SW_Black_F",nil,50000],
                        ["100Rnd_65x39_caseless_mag_Tracer",nil,50000],
                        ["arifle_MXM_Black_F",nil,50000],
                        ["30Rnd_65x39_caseless_mag",nil,50000],
                        ["arifle_MXM_F",nil,50000],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,50000],
                        ["30Rnd_65x39_caseless_mag",nil,50000],
                        ["srifle_EBR_F",nil,50000],
                        ["20Rnd_762x51_Mag",nil,50000],
                        ["LMG_Zafir_F",nil,50000],
                        ["150Rnd_762x51_Box_Tracer",nil,50000],
                        ["150Rnd_762x51_Box",nil,50000],
                        ["LMG_Mk200_F",nil,50000],
                        ["200Rnd_65x39_cased_Box_Tracer",nil,50000],
                        ["200Rnd_65x39_cased_Box",nil,50000],
                        ["arifle_MXC_F",nil,50000],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,50000],
                        ["arifle_MX_F",nil,50000],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,50000],
                        ["arifle_MX_GL_F",nil,50000],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,50000],
                        ["UGL_FlareGreen_F",nil,50000],
                        ["UGL_FlareRed_F",nil,50000],
                        ["3Rnd_HE_Grenade_shell",nil,50000],
                        ["3Rnd_UGL_FlareRed_F",nil,50000],
                        ["3Rnd_UGL_FlareGreen_F",nil,50000],
                        ["arifle_MX_SW_F",nil,50000],
                        ["100Rnd_65x39_caseless_mag_Tracer",nil,50000],
                        ["arifle_Katiba_F",nil,50000],
                        ["30Rnd_65x39_caseless_green",nil,50000],
                        ["arifle_TRG20_F",nil,50000],
                        ["30Rnd_556x45_Stanag_Tracer_Red",nil,50000],
                        ["arifle_Mk20C_F",nil,50000],
                        ["30Rnd_556x45_Stanag_Tracer_Red",nil,50000],
                        ["srifle_DMR_01_F",nil,50000],
                        ["hgun_PDW2000_F",nil,50000],
                        ["30Rnd_9x21_Mag",nil,50000],
                        ["SMG_02_F",nil,50000],
                        ["30Rnd_9x21_Mag",nil,50000],
                        ["SMG_01_F",nil,50000],
                        ["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,50000],
                        ["hgun_Pistol_heavy_02_F",nil,50000],
                        ["6Rnd_45ACP_Cylinder",nil,50000],
                        ["hgun_P07_F",nil,50000],
                        ["30Rnd_9x21_Mag",nil,50000],
                        ["hgun_Rook40_F",nil,50000],
                        ["30Rnd_9x21_Mag",nil,50000],
                        ["hgun_Pistol_heavy_01_MRD_F",nil,50000],
                        ["11Rnd_45ACP_Mag",nil,50000],
                        ["optic_Nightstalker",nil,50000],
                        ["optic_SOS",nil,50000],
                        ["optic_LRPS",nil,50000],
                        ["optic_DMS",nil,50000],
                        ["optic_MRCO",nil,50000],
                        ["optic_Arco",nil,50000],
                        ["optic_ACO_grn",nil,50000],
                        ["optic_Aco",nil,50000],
                        ["optic_Aco_smg",nil,50000],
                        ["optic_ACO_grn_smg",nil,50000],
                        ["optic_Holosight",nil,50000],
                        ["optic_Holosight_smg",nil,50000],
                        ["optic_Hamr",nil,50000],
                        ["optic_Yorris",nil,50000],
                        ["acc_flashlight",nil,50000],
                        ["acc_pointer_IR",nil,50000],
                        ["muzzle_snds_B",nil,50000],
                        ["muzzle_snds_H",nil,50000],
                        ["muzzle_snds_B",nil,50000],
                        ["muzzle_snds_L",nil,50000],
                        ["muzzle_snds_acp",nil,50000],
                                                ["ToolKit",nil,0],
                                                ["itemgps",nil,0],
                                                ["ItemMap",nil,0],
                                                ["FirstAidKit",nil,0],
                                                ["MediKit",nil,5000],
                                                ["Rangefinder",nil,7500],
                                                ["NVGoggles",nil,0],
                                                ["MineDetector",nil,550],
                        ["SmokeShell",nil,50000],
                        ["MiniGrenade",nil,50000],
                        ["HandGrenade",nil,50000],
                        ["B_IR_Grenade",nil,50000],
                        ["I_IR_Grenade",nil,50000],
                        ["O_IR_Grenade",nil,50000],
                        ["APERSTripMine_Wire_Mag",nil,50000],
                        ["SatchelCharge_Remote_Mag",nil,50000],
                        ["SLAMDirectionalMine_Wire_Mag",nil,50000],
                        ["APERSBoundingMine_Range_Mag",nil,50000],
                        ["APERSMine_Range_Mag",nil,50000],
                        ["ClaymoreDirectionalMine_Remote_Mag",nil,50000],
                        ["ATMine_Range_Mag",nil,50000],
                        ["Chemlight_red",nil,500],
                        ["Chemlight_green",nil,000]
                                        ]
                                ];
                        };
                };
        };
       
       
        //Med Level
        case "med_basic":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS Medic"};
                        default {
                                ["Hospital EMS Shop",
                                        [
                                                ["ItemGPS",nil,100],
                                                ["Binocular",nil,150],
                                                ["ToolKit",nil,250],
                                                ["FirstAidKit",nil,150],
                                                ["Medikit",nil,500],
                                                ["NVGoggles",nil,1200],
                                                ["B_FieldPack_ocamo",nil,3000]
                                        ]
                                ];
                        };
                };
        };
       
        //Rebel Shops
        case "rebel":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rebel): {"You don't have a Rebel training license!"};
                        default
                        {
                                ["Mohammed's Jihadi Shop",
                                        [
                                                ["arifle_TRG20_F",nil,25000],
                                                ["arifle_Katiba_F",nil,30000],
												["arifle_MX_SW_F",nil,15000],
												["arifle_MX_F",nil,15000],
												["LMG_Zafir_F",nil,100000],
												["launch_RPG32_F",nil,500000],
												["srifle_LRR_F",nil,500000],
                                                ["srifle_DMR_01_F",nil,50000],
                                                ["arifle_SDAR_F",nil,20000],
                                                ["optic_ACO_grn",nil,500],
												["acc_pointer_IR",nil,3500],
												["optic_LRPS",nil,500],
												["optic_NVS",nil,10000],
												["optic_MRCO",nil,5000],
                                                ["optic_Holosight",nil,3600],
                                                ["acc_flashlight",nil,1000],
                                                ["optic_Hamr",nil,7500],
												["7Rnd_408_Mag",nil,10000],
                                                ["30Rnd_9x21_Mag",nil,200],
                                                ["20Rnd_556x45_UW_mag",nil,125],
                                                ["30Rnd_556x45_Stanag",nil,300],
												["RPG32_HE_F",nil,50000],
                                                ["10Rnd_762x51_Mag",nil,500],
												["150Rnd_762x51_Box_Tracer",nil,500],
                                                ["30Rnd_65x39_caseless_green",nil,275],
												["30Rnd_65x39_caseless_mag_Tracer",nil,500],
												["100Rnd_65x39_caseless_mag_Tracer",nil,5000],
												["ToolKit",nil,0],
                                                ["itemgps",nil,0],
                                                ["ItemMap",nil,0],
                                                ["FirstAidKit",nil,0],
                                                ["MediKit",nil,5000],
                                                ["Rangefinder",nil,7500],
												["Medikit",nil,7500],
                                                ["NVGoggles",nil,0]
                                        ]
                                ];
                        };
                };
        };
        // CIV
        case "gun":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_gun): {"You don't have a Firearms license!"};
                        default
                        {
                                ["Billy Joe's Firearms",
                                        [
                                                ["hgun_Rook40_F",nil,6500],
                                                ["hgun_Pistol_heavy_02_F",nil,9850],
                                                ["hgun_ACPC2_F",nil,11500],
                                                ["hgun_PDW2000_F",nil,20000],
                                                ["optic_ACO_grn_smg",nil,2500],
                                                ["V_Rangemaster_belt",nil,4900],
                                                ["16Rnd_9x21_Mag",nil,25],
                                                ["9Rnd_45ACP_Mag",nil,45],
                                                ["6Rnd_45ACP_Cylinder",nil,50],
                                                ["30Rnd_9x21_Mag",nil,75]
                                        ]
                                ];
                        };
                };
        };
       
        case "gang":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        default
                        {
                                ["Hideout Armament",
                                        [
                                                ["hgun_Rook40_F",nil,1500],
                                                ["hgun_Pistol_heavy_02_F",nil,2500],
                                                ["hgun_ACPC2_F",nil,4500],
                                                ["hgun_PDW2000_F",nil,9500],
                                                ["optic_ACO_grn_smg",nil,950],
                                                ["V_Rangemaster_belt",nil,1900],
                                                ["16Rnd_9x21_Mag",nil,25],
                                                ["9Rnd_45ACP_Mag",nil,45],
                                                ["6Rnd_45ACP_Cylinder",nil,50],
                                                ["30Rnd_9x21_Mag",nil,75]
                                        ]
                                ];
                        };
                };
        };
       
        case "civ_rb":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a rebel!"};
                        case (__GETC__(life_reblevel) < 1): {"You are not at a Rebel!"};
                        default
                        {
                                ["Altis Rebel Shop",
                                        [
                                                ["arifle_MX_F",nil,35000],
                                                ["SMG_02_ACO_F",nil,30000],
                                                ["HandGrenade_Stone","Flashbang",1700],
                                                ["MineDetector",nil,1000],
                                                ["acc_flashlight",nil,750],
                                                ["optic_Holosight",nil,1200],
                                                ["optic_Arco",nil,2500],
                                                ["muzzle_snds_H",nil,2750],
                                                ["30Rnd_65x39_caseless_mag",nil,130],
                                                ["30Rnd_9x21_Mag",nil,250]
                                        ]
                                ];
                        };
                };
        };
       
        case "genstore":
        {
                ["Altis General Store",
                        [
                                ["Binocular",nil,150],
                                ["ItemGPS",nil,100],
                                ["ToolKit",nil,250],
                                ["FirstAidKit",nil,150],
                                ["NVGoggles",nil,2000],
                                ["Chemlight_red",nil,300],
                                ["Chemlight_yellow",nil,300],
                                ["Chemlight_green",nil,300],
                                ["Chemlight_blue",nil,300]
                        ]
                ];
        };
       
};
