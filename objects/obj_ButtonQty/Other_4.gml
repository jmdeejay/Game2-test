/// @description SPAWN INPUT, SCRIPT

if (!myType) // If I am a + Button
{
	myInput = instance_create_layer(x + sprite_width, y, "Boxes", obj_InputQty);
	myInput.plusButton = id;
	myAction = scr_QtyAdd;
	myInput.localGood = targetGood;
} else if (myType) // If I am a - Button
{
	myInput = instance_nearest(x - sprite_width/2, y, obj_InputQty);
	myAction = scr_QtyMinus;
}
