/*
    File: fn_Morphin
    Author: Phil

    Description:
    Morphin schlucken
*/
if ((life_blood == 100) && (damage player == 0)) exitWith {hint "Du bist kerngesund!"};
if (life_morphin_cd) exitWith {};
	if ([false,"morphin",1] call life_fnc_handleInv) then {
			life_ishealing = true;
			titleText ["Du hast Morphin eingenommen!", "PLAIN",5];
			player playActionNow "Medic";
			sleep 10;
			titleText ["", "PLAIN",5];
			life_ishealing = false;
			life_morphin = true;
			life_morphin_cd = true;
			_olddamage = damage player;
			damage player = (damage player - 0.5);
			sleep 600;
			_damageback = 300;
			life_morphin = false;
			while {(_damageback > 0)} do {
				damage player = (damage player - 0.0016);
				sleep 1;
				if (damage player < 0.01) exitWith { [] call life_fnc_unconscious;};
			};
			sleep 300;
			life_morphin_cd = false;
		}
		else
		{
			hint "Du hast kein Morphin übrig!";
		};

