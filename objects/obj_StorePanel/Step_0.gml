/// @description UPDATE POS

xPadding = x + 9;
yPadding = y + 10;


for (var i = 0; i < ds_list_size(obj_LocalStore.myMenu); i++) // How many items?
{
	var _y = (yPadding + 28) + (i * 18); // the top of the current item row
	//Define our Hotzone
	variable_instance_set(id, "hotZone_" + string(i),  
	point_in_rectangle(mouse_x, mouse_y, bbox_left, _y, bbox_right + 28, _y + 14));
	
	//if our Hotzone == true
	if (variable_instance_get(id, "hotZone_" + string(i)))
	{
		ds_stack_push(G.stateStack, GameState.StoreDescription);
	}
}
