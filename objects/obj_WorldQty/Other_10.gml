/// @description UPDATE PRICES

//  for (var i = 0; i < 18; i++)
//	myPrices[i] = scr_CalculatePrice(myOnHand[i], i);

for (var i = 0; i <18; i++)
{
	G.PriceTable[# VAIO, i] = scr_CalculatePrice(G.worldQtyTable[# VAIO, i], i);
	G.PriceTable[# DOMO, i] = scr_CalculatePrice(G.worldQtyTable[# DOMO, i], i);
	G.PriceTable[# CHIRS, i] = scr_CalculatePrice(G.worldQtyTable[# CHIRS, i], i);
	G.PriceTable[# BARC, i] = scr_CalculatePrice(G.worldQtyTable[# BARC, i], i);
	G.PriceTable[# ZAND, i] = scr_CalculatePrice(G.worldQtyTable[# ZAND, i], i);
	G.PriceTable[# SYRR, i] = scr_CalculatePrice(G.worldQtyTable[# SYRR, i], i);
	G.PriceTable[# KAND, i] = scr_CalculatePrice(G.worldQtyTable[# KAND, i], i);
}