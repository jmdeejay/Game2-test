/// @description UPDATE VISIBILITY

with (obj_InputQty)
{
	if (printNumber > 0)
	{
		other.visible = true;
		break;
	}
	else if (printNumber == 0)
		other.visible = false;
}