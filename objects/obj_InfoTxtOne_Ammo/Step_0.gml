/// @description EVAL AND UPDATE

switch (room)
{
	case rm_Market1:
	valueOne = obj_MyLedger.Cash;
	break;

	case rm_Store1:
	valueOne = obj_LocalStore.myAmmoCount + startValue;
	break;
}