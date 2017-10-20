/// @description CHECK AND LEAVE
display_set_gui_size(640,360);

if (instance_exists(obj_GameStates) and instance_exists(obj_Codex)){
	// room_goto_next(); // debug - quickloading enabled
	scr_QuickLoad(1, 1, rm_MapScreen);
}
