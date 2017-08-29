// Invoked by obj_MrktSupply
// Accepts 7 arguments. Integer only. Each argument is the Port Town that needs to fill a column with the
// supply-percent of each spice. 
// NOTE: DO NOT INVOKE WITH OTHER OBJECTS

var _townOne = argument0;
var _townTwo = argument1;
var _townThree = argument2;
var _townFour = argument3;
var _townFive = argument4;
var _townSix = argument5;

// FILL COLUMN 1
for (var i = 0; i < 18; i++)
{
	myGrid[# 1, i] = G.PriceTable[# _townOne, i];
}

// FILL COLUMN 2
for (var i = 0; i < 18; i++)
{

	myGrid[# 2, i] = G.PriceTable[# _townTwo, i];
}

// FILL COLUMN 3
for (var i = 0; i < 18; i++)
{

	myGrid[# 3, i] = G.PriceTable[# _townThree, i];
}

// FILL COLUMN 4
for (var i = 0; i < 18; i++)
{
	myGrid[# 4, i] = G.PriceTable[# _townFour, i];
}

// FILL COLUMN 5
for (var i = 0; i < 18; i++)
{
	myGrid[# 5, i] = G.PriceTable[# _townFive, i];
}

// FILL COLUMN 6
for (var i = 0; i < 18; i++)
{
	myGrid[# 6, i] = G.PriceTable[# _townSix, i];
}