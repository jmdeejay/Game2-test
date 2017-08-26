/// @description INIT VARS
show_debug_message("PopUp Depth is " + string(depth))
myPath = pth_Bnk_Transact;
x = path_get_x(myPath,0);
y = path_get_y(myPath,0);

mySpeed = 0;
isPathStart = false;

visible = false;

myTitle = "Test!";

titleX = bbox_left + 10;
titleY = bbox_top + 3;

titleColor = make_color_rgb(240,240,242);
dropColor = make_color_rgb(35,33,61);
labelOneColor = COLOR_WHITE_LIGHT;
labelTwoColor = COLOR_WHITE_LIGHT;

labelOne = "Cash: ";
labelTwo = "Savings: ";
valueOne = obj_MyLedger.Cash;
valueTwo = obj_MyLedger.Savings;


//Create Deposit Buttons
quarterButton = instance_create_depth(titleX, titleY + 48, 999, obj_ButtonMoveCash);
quarterButton.myType = 0; // So that the 1/4 sprite shows

halfButton = instance_create_depth(titleX + 45, titleY + 48, 998, obj_ButtonMoveCash);
halfButton.myType = 1; // So that the 1/2 sprite shows

allButton = instance_create_depth(titleX + 90, titleY + 48, 997, obj_ButtonMoveCash);
allButton.myType = 2; // So that the "ALL" sprite shows

cancelButton = instance_create_depth(titleX + 134, titleY + 48, 996, obj_ButtonCancel);

inputField = instance_create_depth(titleX, titleY + 31, 995, obj_InputCash);

okButton = instance_create_depth(titleX + 174, titleY + 31, 990, obj_ButtonOk);