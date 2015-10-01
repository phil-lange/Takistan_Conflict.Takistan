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


_profName = ["level"] call life_fnc_profType;
if( _profName != "" ) then
{
_data = missionNamespace getVariable (_profName);
_level = _data select 1;
};



//_data1 = missionNamespace getVariable ("Mafia_Prof");
//_mafia = _data1 select 0;


switch (_shop) do
{
	/*
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",80000],
			["C_Kart_01_Fuel_F",80000],
			["C_Kart_01_Red_F",80000],
			["C_Kart_01_Vrana_F",80000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["I_Truck_02_medical_F",25000],
			["O_Truck_03_medical_F",45000],
			["C_SUV_01_F",10000],
			["B_Truck_01_medical_F",60000]
		];
	};

	case "med_air_hs": {
		_return = [

			["O_Heli_Light_02_unarmed_F",20000],
			["O_Heli_Transport_04_medevac_F",30000]
		];
	};
	*/
	
	case "cop_car":
	{
		_return pushBack
		["B_mas_cars_LR_Unarmed",5000];
		/*
		if(__GETC__(life_coplevel) >= 2) then
		{
		_return pushBack
		["B_mas_cars_LR_Mk19",10000];
		};
		*/
		if(__GETC__(life_coplevel) >= 4) then
		{
		_return pushBack
		["B_mas_HMMWV_UNA",20000];
		};
		if(__GETC__(life_coplevel) >= 6) then
		{
		_return pushBack
		["B_mas_HMMWV_M2",25000];
		};
		if(license_cop_swat) then
		{
		_return pushBack
		["B_mas_HMMWV_SOV_M134",25000];
		};
	};

	/*
	case "civ_air":
	{
		_return =
		[

			["I_mas_MI8",500000],
			["I_mas_MI8MTV",1000000],
			["I_mas_MI24V",1000000]
		];
	};
	*/

	case "cop_air":
	{
		if(__GETC__(life_coplevel) >= 2) then
		{
			_return pushBack
			["B_Heli_Light_01_F",10000];
		};
		if(__GETC__(life_coplevel) >= 3) then
		{
			_return pushBack
			["B_mas_UH1Y_UNA_F",15000];
		};
		if(__GETC__(life_coplevel) >= 4) then
		{
			_return pushBack
			["B_mas_UH60M",20000];
			_return pushBack
			["B_mas_CH_47F",40000];
		};
		if(__GETC__(life_coplevel) >= 6) then
		{
			_return pushBack
			["B_Heli_Light_01_armed_F",20000];
		};
		/*
		if(license_cop_swat) then
		{
		_return pushBack
			["B_Heli_Transport_01_camo_F",40000];
		};
		*/
	};
	
	case "cop_drone":
	{
		if(__GETC__(life_coplevel) >= 8) then
		{
			_return pushBack
			["B_UAV_02_F",10000];
		};
	};

	/*
	case "cop_airhq":
	{
		if(__GETC__(life_coplevel) >= 2) then
		{
			_return pushBack
			["B_Heli_Light_01_F",10000];
		};
		if(__GETC__(life_coplevel) >= 4) then
		{
			_return pushBack
			["B_mas_UH60M",20000];
			_return pushBack
			["B_mas_CH_47F",40000];
		};
		if(license_cop_swat) then
		{
		_return pushBack
			["B_Heli_Transport_01_camo_F",40000];
		};
	};
	*/

	/*
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",25000],


			["C_Boat_Civil_01_F",35000]
		];
	};


	case "donator_car":
	{
		if(__GETC__(life_donator) >= 1) then
		{

			_return pushBack
			["cl3_r8_spyder_2tone1",500000];
			_return pushBack
			["cl3_r8_spyder_2tone2",500000];
			_return pushBack
			["cl3_r8_spyder_2tone3",500000];
			_return pushBack
			["cl3_r8_spyder_2tone4",500000];
			_return pushBack
			["cl3_r8_spyder_2tone5",500000];
			_return pushBack
			["cl3_r8_spyder_flame",500000];
			_return pushBack
			["cl3_r8_spyder_flame1",500000];
			_return pushBack
			["cl3_r8_spyder_flame2",500000];
			_return pushBack
			["cl3_458_2tone1",500000];
			_return pushBack
			["cl3_458_2tone2",500000];
			_return pushBack
			["cl3_458_2tone3",500000];
			_return pushBack
			["cl3_458_2tone4",500000];
			_return pushBack
			["cl3_458_2tone5",500000];
			_return pushBack
			["cl3_458_flame",500000];
			_return pushBack
			["cl3_458_flame1",500000];
			_return pushBack
			["cl3_458_flame2",500000];
			_return pushBack
			["cl3_e60_m5_lime",100000];
			_return pushBack
			["cl3_e63_amg_orange",350000];
			_return pushBack
			["cl3_e60_m5_camo",100000];
			_return pushBack
			["cl3_dbs_volante_camo_urban",500000];
			_return pushBack
			["cl3_taurus_camo",40000];
			_return pushBack
			["cl3_458_babypink",500000];
		};

	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
	*/

case "civ_car":
	{
		_return =
		[
			["O_mas_cars_UAZ_Unarmed",10000],
			["isc_is_hilux_Unarmed_o",25000]
		];
	};
	
case "level_car":
	{
		if(call life_fnc_getLevel >= 300) then
		{
		_return pushBack
		["I_mas_cars_UAZ_MG",25000];
		_return pushBack
		["isc_is_hilux_MG_o",50000];
		};
		
		if(call life_fnc_getLevel >= 500) then
		{
		_return pushBack
		["I_mas_cars_UAZ_M2",75000];
		//_return pushBack
		//["isc_is_hilux_AGS30_o",100000];
		};
		
	};	

	
};

_return;
