/// @description UPDATE BARREL COUNT

switch (localGood)
{
	case "ItemRations":
	obj_LocalStore.myRationCount = printNumber;
	break;
	
	case "ItemAmmo":
	obj_LocalStore.myAmmoCount = printNumber;
	break;
	
	case "Seaman":
	obj_LocalTavern.mySeamanCount = printNumber;
	break;
	
	case "Cook":
	obj_LocalTavern.myCookCount = printNumber;
	break;
	
	case "Gunner":
	obj_LocalTavern.myGunnerCount = printNumber;
	break;
	
}