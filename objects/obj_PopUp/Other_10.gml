/// @description POP UP
obj_InputCash.tempTitle = myTitle; // Need to reset after isManual
obj_InputCash.printNumber = 0;
myPath = pth_Bnk_Transact;
mySpeed = 18;
path_start(myPath, mySpeed, path_action_stop, true);
