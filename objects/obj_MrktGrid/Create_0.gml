/// @description CREATE DS GRID

myGrid = ds_grid_create(7,18);

myPath = pth_Bnk_LeftPanel; // Empty path. Needs to be defined manually in Room Creation Code.
x = path_get_x(myPath,0);
y = path_get_y(myPath,0);


// LEFT COLUMN
Names_x1 = x + 5;
Names_y1 = y + 5;

Names_x2 = x + 78;
Names_y2 = y + 19;

// ON BOAT QUANTITIES - YOUR CARGO
Cargo_x1 = x + 83;
Cargo_x2 = x + 110;

// MARKET PRICE
Price_x1 = x + 179;
Price_x2 = x + 206

// PRICE PAID
Paid_x1 = x + 147;
Paid_x2 = x + 174;

// AVALAILABLE TO SELL / ON HAND COLUMN 
OnHand_x1 = x + 115;
OnHand_x2 = x + 142;


// LOW RANGE COLUMN
LowRange_x1 = x + 211;
LowRange_x2 = x + 238;

// HI RANGE COLUMN
HiRange_x1 = x + 243;
HiRange_x2 = x + 266;


mySpeed = 0;
myTicks = 1; // Change in Creation Code;
image_speed = 0;
image_index = 0; // Show only the first frame.

// PULL BOAT QUANTITIES
ds_grid_set(myGrid, 1, 0, obj_MyBarrels.Rosemary);
ds_grid_set(myGrid, 1, 0, obj_MyBarrels.Paprika);
ds_grid_set(myGrid, 1, 0, obj_MyBarrels.Basil);
ds_grid_set(myGrid, 1, 0, obj_MyBarrels.Thyme);
ds_grid_set(myGrid, 1, 0, obj_MyBarrels.Cumin);
ds_grid_set(myGrid, 1, 0, obj_MyBarrels.CaneSugar);
ds_grid_set(myGrid, 1, 0, obj_MyBarrels.Pepper);
ds_grid_set(myGrid, 1, 0, obj_MyBarrels.Turmeric);
ds_grid_set(myGrid, 1, 0, obj_MyBarrels.GarlicPowder);
ds_grid_set(myGrid, 1, 0, obj_MyBarrels.GingerPowder);
ds_grid_set(myGrid, 1, 0, obj_MyBarrels.Salt);
ds_grid_set(myGrid, 1, 0, obj_MyBarrels.MustardSeed);
ds_grid_set(myGrid, 1, 0, obj_MyBarrels.Cloves);
ds_grid_set(myGrid, 1, 0, obj_MyBarrels.Nutmeg);
ds_grid_set(myGrid, 1, 0, obj_MyBarrels.Sesame);
ds_grid_set(myGrid, 1, 0, obj_MyBarrels.Cinnamon);
ds_grid_set(myGrid, 1, 0, obj_MyBarrels.Saffron);
ds_grid_set(myGrid, 1, 0, obj_MyBarrels.Vanilla);