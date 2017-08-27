/// @description UPDATE POS

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
Price_x2 = x + 206;

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


// UPDATE SHIP CARGO
for (var i = 0; i < 18; i++)
{
	myGrid[# 1, i] = obj_MyBarrels.MyBarrels[# 0, i];
}

// UPDATE AVAILABLE AT PORT
for (var i = 0; i < 18; i++)
{
	myGrid[# 2, i] = obj_LocalMarket.myOnHand[i];
}

// UPDATE PRICE PAID
for (var i = 0; i < 18; i++)
	myGrid[# 3, i] = scr_CalculateCost(obj_MyBarrels.myRunningCosts[| i], obj_MyBarrels.MyBarrels[# 0, i]);