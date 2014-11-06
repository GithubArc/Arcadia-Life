#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["I_Truck_02_medical_F",25000],
			["O_Truck_03_medical_F",45000],
			["B_Truck_01_medical_F",60000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",50000],
			["O_Heli_Light_02_unarmed_F",75000],
			["O_Heli_Transport_04_medevac_F",1000000],
			["O_Heli_Transport_04_box_F",2000000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Hatchback_01_sport_F",12500],
			["C_Offroad_01_F",15500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",275000],
			["O_Truck_03_transport_F",200000],
			["O_Truck_03_covered_F",250000],
			["B_Truck_01_box_F",350000],
			["O_Truck_03_device_F",1450000],
			["B_Truck_01_fuel_F",4000000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",1150000],
			["I_MRAP_03_F",5000000]

			
		];
		
		if(license_civ_rebel) then
		{
			_return pushBack
			["B_G_Offroad_01_armed_F",5750000];
		};
	};
	
	case "cop_car":
	{
		_return pushBack
		["C_Offroad_01_F",5000];
		_return pushBack
		["C_SUV_01_F",20000];
		if(__GETC__(life_coplevel) > 5) then
		{
			_return pushBack
			["B_MRAP_01_F",150000];
		};
		if(__GETC__(life_coplevel) > 8) then
		{
			_return pushBack
			 ["B_MRAP_01_hmg_F",2500000],
			 ["B_MBT_01_TUSK_F",10000000];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000],
			["B_Heli_Transport_03_unarmed_F",2400000],
			["I_Heli_Transport_02_F",2400000],
			["C_Heli_Light_01_civil_F", 4500000],
			["O_Heli_Transport_04_box_F",56000000],
			["O_Heli_Transport_04_covered_F",32000000]
		];
	};
	
	case "cop_air":
	{
		_return pushBack
		["B_Heli_Light_01_F",75000];
		if(__GETC__(life_coplevel) > 7) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",850000],
			["O_Heli_Attack_02_black_F",925000],
			["I_Heli_Transport_02_F",2400000],
			["I_Heli_light_03_F",5000000],
			["B_Heli_Attack_01_F",7500000];
		};
	};
	
	case "cop_airhq":
	{
		_return pushBack
		["B_Heli_Light_01_F",75000],
		["B_Heli_Transport_03_F",75600444];
		if(__GETC__(life_coplevel) > 7) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",850000],
			["O_Heli_Attack_02_black_F",925000],
			["I_Heli_Transport_02_F",2400000],
			["I_Heli_light_03_F",5000000],
			["B_Heli_Attack_01_F",7500000];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",175000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
