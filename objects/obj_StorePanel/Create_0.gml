/// @description INIT VARS

myPath = pth_Bnk_LeftPanel; // Empty path. Needs to be defined manually in Room Creation Code.
x = path_get_x(myPath,0);
y = path_get_y(myPath,0);

mySpeed = 0;
myTicks = 1; // Change in Creation Code;

xPadding = 0;
yPadding = 0;

myTitle = "Item Shop";
dropColor = make_color_rgb(35,33,61);
titleColor = make_color_rgb(242,242,240);
bodyColor = make_color_rgb(92,56,65);
