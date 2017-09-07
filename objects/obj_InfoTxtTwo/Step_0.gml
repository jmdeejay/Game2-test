/// @description EVAL AND UPDATE

switch (room)
{
	case rm_Market1:
	valueOne = G.CurrentBarrels;
	valueTwo = G.MaxBarrels;
	break;
	
	case rm_Store1:
	valueOne = storeBarrelsAtStart + obj_LocalStore.myRationCount + obj_LocalStore.myAmmoCount;
	valueTwo = G.MaxBarrels;
	break;

}