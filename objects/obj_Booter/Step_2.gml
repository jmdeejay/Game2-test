/// @description CHECK AND LEAVE

if (instance_exists(obj_GameStates) and 
	instance_exists(obj_MyCaptain) and 
	instance_exists(obj_MyShip) and 
	instance_exists(obj_Codex) and 
	instance_exists(obj_MyBarrels) and
	instance_exists(obj_MyLedger) and
	instance_exists(obj_Globals) and
	instance_exists(obj_WorldQty))
	room_goto_next();
	
// A test for GIT
