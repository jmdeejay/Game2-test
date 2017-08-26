/// @description VAIOS PRICE UPDATE

//  for (var i = 0; i < 18; i++)
//	myPrices[i] = scr_CalculatePrice(myOnHand[i], i);

for (var i = 0; i <18; i++)
	G.PriceTable[# VAIO, i] = scr_CalculatePrice(G.worldQtyTable[# VAIO, i], i);