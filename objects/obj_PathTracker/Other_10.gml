/// @description ADD TO LIST
//Set last tile added as "not encountered"
var _last = global.selectedHex[| ds_list_size(global.selectedHex)-1]
_last.isEncountered = false;
//Add newest tile to the list
ds_list_add(global.selectedHex, receiveID);
show_debug_message("USER EVENT 0")