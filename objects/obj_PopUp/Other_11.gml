/// @description POP DOWN
myPath = pth_CancelTransaction;
path_start(myPath, mySpeed, path_action_stop, true);
instance_destroy(obj_okShowMoney);
if (path_position == 1)
	visible = false;