/// @description EVAL AND UPDATE

switch (currentRoom)
{
	case "rm_Market":
	valueOne = obj_MyLedger.Cash;
	break;

	case "rm_Store":
	valueOne = obj_LocalStore.myRationCount + startValue;
	break;
	
	case "rm_Tavern":
	valueOne = obj_LocalTavern.mySeamanCount + startValue;
	break;
	
}