/// @description UPDATE IMG INDX

if (visible)
{
	if (obj_LocalTavern.myTotalHireCount > 0) // There are items in my cart
	{
		image_index = 2;

	} else if (obj_LocalTavern.myTotalHireCount == 0) // There are no items in my cart
	{
		image_index = 0;
	}
}