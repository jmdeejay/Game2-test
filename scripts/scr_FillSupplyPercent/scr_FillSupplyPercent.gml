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
	var _price = G.PriceTable[# _townOne, i];
	var _low = G.worldRanges[# 0, i];
	var _hi = G.worldRanges[# 1, i];
	
	var _percent = (_hi - _price) / (_hi - _low) * 100;
	myGrid[# 1, i] = _percent;
}

// FILL COLUMN 2
for (var i = 0; i < 18; i++)
{
	var _price = G.PriceTable[# _townTwo, i];
	var _low = G.worldRanges[# 0, i];
	var _hi = G.worldRanges[# 1, i];
	
	var _percent = (_hi - _price) / (_hi - _low) * 100;
	myGrid[# 2, i] = _percent;
}

// FILL COLUMN 3
for (var i = 0; i < 18; i++)
{
	var _price = G.PriceTable[# _townThree, i];
	var _low = G.worldRanges[# 0, i];
	var _hi = G.worldRanges[# 1, i];
	
	var _percent = (_hi - _price) / (_hi - _low) * 100;
	myGrid[# 3, i] = _percent;
}

// FILL COLUMN 4
for (var i = 0; i < 18; i++)
{
	var _price = G.PriceTable[# _townFour, i];
	var _low = G.worldRanges[# 0, i];
	var _hi = G.worldRanges[# 1, i];
	
	var _percent = (_hi - _price) / (_hi - _low) * 100;
	myGrid[# 4, i] = _percent;
}

// FILL COLUMN 5
for (var i = 0; i < 18; i++)
{
	var _price = G.PriceTable[# _townFive, i];
	var _low = G.worldRanges[# 0, i];
	var _hi = G.worldRanges[# 1, i];
	
	var _percent = (_hi - _price) / (_hi - _low) * 100;
	myGrid[# 5, i] = _percent;
}

// FILL COLUMN 6
for (var i = 0; i < 18; i++)
{
	var _price = G.PriceTable[# _townSix, i];
	var _low = G.worldRanges[# 0, i];
	var _hi = G.worldRanges[# 1, i];
	
	var _percent = (_hi - _price) / (_hi - _low) * 100;
	myGrid[# 6, i] = _percent;
}