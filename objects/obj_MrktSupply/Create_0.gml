/// @description CREATE DS GRID

myLocation = G.CurrentTown;
visible = false;

myGrid = ds_grid_create(7,18);

myPath = pth_Bnk_LeftPanel; // Empty path. Needs to be defined manually in Room Creation Code.
x = path_get_x(myPath,0);
y = path_get_y(myPath,0);


// SPICE COLUMN
Names_x1 = x + 5;
Names_y1 = y + 5;

Names_x2 = x + 78;
Names_y2 = y + 19;

// COLUMN 1
Column1_x1 = x + 83;
Column1_x2 = x + 110;

// COLUMN 2
Column2_x1 = x + 115;
Column2_x2 = x + 142;

// COLUMN 3
Column3_x1 = x + 147;
Column3_x2 = x + 174;

// COLUMN 4
Column4_x1 = x + 179;
Column4_x2 = x + 206;


// COLUMN 5
Column5_x1 = x + 211;
Column5_x2 = x + 238;

// COLUMN 6
Column6_x1 = x + 243;
Column6_x2 = x + 266;


mySpeed = 0;
myTicks = 1; // Change in Creation Code;
image_speed = 0;
image_index = 0; // Show only the first frame.

// PULL SPICE NAMES
for (var i = 0; i < 18; i++)
	myGrid[# 0, i] = G.worldQtyTable[# 0, i]; // Names

// HOTZONES
isColumnOne = point_in_rectangle(mouse_x, mouse_y, Column1_x1, Names_y1, Column1_x2, bbox_bottom);
isColumnTwo = point_in_rectangle(mouse_x, mouse_y, Column2_x1, Names_y1, Column2_x2, bbox_bottom);
isColumnThree = point_in_rectangle(mouse_x, mouse_y, Column3_x1, Names_y1, Column3_x2, bbox_bottom);
isColumnFour = point_in_rectangle(mouse_x, mouse_y, Column4_x1, Names_y1, Column4_x2, bbox_bottom);
isColumnFive = point_in_rectangle(mouse_x, mouse_y, Column5_x1, Names_y1, Column5_x2, bbox_bottom);
isColumnSix = point_in_rectangle(mouse_x, mouse_y, Column6_x1, Names_y1, Column6_x2, bbox_bottom);