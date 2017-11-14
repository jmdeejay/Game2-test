/// @description EVAL AND UPDATE

switch (myRoom)
{
	case "rm_Market":
	valueOne = G.CurrentBarrels;
	valueTwo = G.MaxBarrels;
	break;
	
	case "rm_Store":
	valueOne = storeBarrelsAtStart + obj_LocalStore.myRationCount + obj_LocalStore.myAmmoCount;
	valueTwo = G.MaxBarrels;
	break;

}