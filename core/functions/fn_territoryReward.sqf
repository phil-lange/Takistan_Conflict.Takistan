/*
	File: fn_territoryReward.sqf
	Author: xydra
	Give that man a cookie
*/

// _pos, Spieler von Gewinnerseite

private["_over","_side"];

_over = _this select 0;
_side = _this select 1;

if (playerside != _side) exitWith {};
if (playerSide == civilian) then {
if(!_over) then {
  			//Minütlich
  			life_cash = life_cash + 25;
  			["Level_Prof",25,1] call life_fnc_addLevel;
			[] call life_fnc_profSetup;
  			[format ["<t align='left'><t size='0.6' shadow='1'><t color='#9FF781'><br /> Punkt erhalten! <br/> + 25$ <br/> + 25 EXP"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
} else {
  			//Ende des Territoryfights
  			life_cash = life_cash + 500;
  			["Level_Prof",500,1] call life_fnc_addLevel;
			   [] call life_fnc_profSetup;
  			[format ["<t align='left'><t size='0.6' shadow='1'><t color='#9FF781'><br /> Gebietskampf gewonnen! <br/> + 500$ <br/> + 500 EXP"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
        if (life_quest == 33) then {["QuestInfo_Prof",1,1] call life_fnc_addLevel;};
};
}
else
{
  if (_over) then {
        ["Abzeichen_Prof",5,1] call life_fnc_addLevel;
        [] call life_fnc_profSetup;
        [format ["<t align='left'><t size='0.6' shadow='1'><t color='#9FF781'><br /> Gebietskampf gewonnen! <br/> + 5 Abzeichen"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
  };
};
