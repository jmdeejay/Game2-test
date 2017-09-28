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
		var _status = obj_MyCaptain.myCaptain[? "CrewStatus"]; // "Green" "Able" "Seasoned"
		var _capModifier = obj_MyCaptain.myCaptain[? "CrewReadinessModifier"]; // a number close to 1.
		var _baseSkill;
		switch (_status)
		{
			case "Green":
			_baseSkill = 3;
			break;
			case "Able":
			_baseSkill = 5;
			break;
			case "Seasoned":
			_baseSkill = 7;
			break;	
		}
		var _newPercent = (_newSeamen * (_baseSkill * _capModifier)) / obj_MyShip.myShip[? "MaxReady"] * 100 ;
		valueOne = min(floor(_newPercent) + obj_MyShip.ReadyPercent, 100);
		
	break;
	
	case 3: // Show Ship Cooking Ability
	//do stuff
		var _newCook = obj_LocalTavern.myCookCount;
		var _status = obj_MyCaptain.myCaptain[? "CrewStatus"]; // "Green" "Able" "Seasoned"
		var _baseSkill;
		switch (_status)
		{
			case "Green":
			_baseSkill = 2;
			break;
			case "Able":
			_baseSkill = 4;
			break;
			case "Seasoned":
			_baseSkill = 6;
			break;	
		}
		var _newPercent = (_newCook * _baseSkill);
		valueOne = min(floor(_newPercent) + obj_MyShip.CookingSkill, obj_MyShip.myShip[? "PassengerCapacity"]);
	
	break;
}