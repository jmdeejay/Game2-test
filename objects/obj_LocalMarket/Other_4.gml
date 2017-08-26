/// @description Fill array from Table
switch (room_get_name(room))
{
	case "rm_Market1":
	myCode = VAIO;
	break;
	
	case "rm_Market2":
	myCode = DOMO;
	break;
	
	case "rm_Market3":
	myCode = CHIRS;
	break;
	
	case "rm_Market4":
	myCode = BARC;
	break;
	
	case "rm_Market5":
	myCode = ZAND;
	break;
	
	case "rm_Market6":
	myCode = SYRR;
	break;
	
	case "rm_Market7":
	myCode = KAND;
	break;
}

for (i = 17; i >= 0; i--)
{
	myOnHand[i] = global.worldQtyTable[# myCode, i];
}

// GET PRICES
for (var i = 0; i < 18; i++)
	myPrices[i] = G.PriceTable[# myCode, i];

// GET COSTS
for (var i = 0; i < 18; i++)
	myCosts[i] = scr_CalculateCost(obj_MyBarrels.myRunningCosts[| i], obj_MyBarrels.MyBarrels[# 0, i]);
