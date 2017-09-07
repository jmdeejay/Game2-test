/// @description SPAWN INPUT, SCRIPT

if (!myType) // If I am a + Button
{
	myInput = instance_create_layer(x + (sprite_width * 2), y, "Boxes", obj_InputQty);
	myInput.plusButton = id;
	myAction = scr_QtyAdd;
	myInput.localGood = targetGood; // Determines which price to pull from obj_LocalStore
} else if (myType) // If I am a - Button
{
	myInput = instance_nearest(x + sprite_width, y, obj_InputQty);
	myInput.minusButton = id;
	myAction = scr_QtyMinus;
}
