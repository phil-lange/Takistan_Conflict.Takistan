/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((player distance _unit > 3)) exitWith {};
if((_unit getVariable "restrained")) exitWith {};
//if(side _unit == west) exitWith {};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};


	
	

//Broadcast!
[[_unit],"life_fnc_cuffSound",nil,true] spawn life_fnc_MP;
_unit setVariable["restrained",true,true];
[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;


if (headgear player in life_masked) then //ToClient
	{
		[[0,format["Du wurdest von %2 festgenommen",_unit getVariable["realname", name _unit], "einer Maskierten Person"]],"life_fnc_broadcast",_unit,false] call life_fnc_MP;
	}
		else
	{
		[[0,format["Du wurdest von %1 festgenommen", profileName]],"life_fnc_broadcast",_unit,false] call life_fnc_MP;
	};
