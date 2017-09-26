/// @description ALARM SET, STRING INIT

alarm_set(0, myTicks);

// Unpack ds lists
for (var i = 0; i < ds_list_size(obj_LocalStore.myMenu); i++) // For however long this list is...
{
	var _map = obj_LocalStore.myMenu[| i]; // Pull the map at the list entry
	var _string = _map[? "ItemDescription"]; // Pull the ItemDescription from the map

	if (variable_instance_exists(id, "slot_" + string(i))) // if the variable was created in CREATE...
	{
	variable_instance_set(id, "slot_" + string(i), _string) // Fill the variable with the string from the ds map
	}
}