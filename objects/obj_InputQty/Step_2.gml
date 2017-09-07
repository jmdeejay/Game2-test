/// @description UPDATE BARREL COUNT

switch (localGood)
{
	case "ItemRations":
	obj_LocalStore.myRationCount = printNumber;
	break;
	
	case "ItemAmmo":
	obj_LocalStore.myAmmoCount = printNumber;
	break;
}