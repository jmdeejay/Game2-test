/// @description EVAL AND UPDATE

switch (myType)
{
	case 0: // Just Show Cash
		valueOne = obj_MyLedger.Cash;
	break;

	case 1: // Show Subtotal of Items Purchasing
		valueOne = obj_LocalStore.mySubtotal;
		if (valueOne > obj_MyLedger.Cash)
			bodyColor = COLOR_RED_DARK;
		else
			bodyColor = COLOR_WHITE_LIGHT;
	break;
	
	case 2: // Show Ship Readiness
		var _newSeamen = obj_LocalTavern.mySeamanCount;
		var _capModifier = obj_MyCaptain.myCaptain[? "CrewReadinessModifier"]; // a number close to 1.
		var _baseSkill = 3;
		var _newPercent = (_newSeamen * (_baseSkill * _capModifier)) / obj_MyShip.myShip[? "MaxReady"] * 100 ;
		valueOne = min(floor(_newPercent) + obj_MyShip.ReadyPercent, 100);
		if (floor(_newPercent) + obj_MyShip.ReadyPercent > 100) 
		{
			bodyColor = COLOR_RED_DARK;
		}
		else if (floor(_newPercent) + obj_MyShip.ReadyPercent <= 100)
			bodyColor = COLOR_WHITE_LIGHT;
	break;
	
	case 3: // Show Ship Cooking Ability
		var _newCook = obj_LocalTavern.myCookCount;
		var _baseSkill = 2;;
		var _newPercent = (_newCook * _baseSkill);
		valueOne = min(floor(_newPercent) + obj_MyShip.CookingSkill, obj_MyShip.myShip[? "PassengerCapacity"]);
		if (floor(_newPercent) + obj_MyShip.CookingSkill > obj_MyShip.myShip[? "PassengerCapacity"])
			bodyColor = COLOR_RED_DARK;
		else if (floor(_newPercent) + obj_MyShip.CookingSkill <= obj_MyShip.myShip[? "PassengerCapacity"])
			bodyColor = COLOR_WHITE_LIGHT;
			
	break;
	
	case 4: // Show Ship Gunning Ability

		var _newGunner = obj_LocalTavern.myGunnerCount;
		var _baseSkill = 1;
		var _newPercent = (_newGunner * _baseSkill);
		valueOne = min(floor(_newPercent) + obj_MyShip.MannedGuns, obj_MyShip.myShip[? "CurrentCannons"]);
		if (floor(_newPercent) + obj_MyShip.MannedGuns > obj_MyShip.myShip[? "CurrentCannons"])
			bodyColor = COLOR_RED_DARK;
		else if (floor(_newPercent) + obj_MyShip.MannedGuns <= obj_MyShip.myShip[? "CurrentCannons"])
			bodyColor = COLOR_WHITE_LIGHT;
	break;
	
	case 5: // Show Payroll expense		
		var _newCrew = obj_LocalTavern.myTotalHireCount;	
		var _oldCrew = ds_list_size(obj_MyCaptain.myCrewManifest);
		var _capModifier = obj_MyCaptain.myCaptain[? "CrewPayRate"];	
		valueOne = (_newCrew + _oldCrew) * (_capModifier * G.CrewWages);
	break;
}