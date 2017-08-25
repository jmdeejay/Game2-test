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
myPrices[ROSE] = scr_CalculatePrice(myOnHand[ROSE], ROSE);
myPrices[PAPR] = scr_CalculatePrice(myOnHand[PAPR], PAPR);
myPrices[BASI] = scr_CalculatePrice(myOnHand[BASI], BASI);
myPrices[THYM] = scr_CalculatePrice(myOnHand[THYM], THYM);
myPrices[CUMI] = scr_CalculatePrice(myOnHand[CUMI], CUMI);
myPrices[CANE] = scr_CalculatePrice(myOnHand[CANE], CANE);
myPrices[PEPP] = scr_CalculatePrice(myOnHand[PEPP], PEPP);
myPrices[TURM] = scr_CalculatePrice(myOnHand[TURM], TURM);
myPrices[GARL] = scr_CalculatePrice(myOnHand[GARL], GARL);
myPrices[GING] = scr_CalculatePrice(myOnHand[GING], GING);
myPrices[SALT] = scr_CalculatePrice(myOnHand[SALT], SALT);
myPrices[MUST] = scr_CalculatePrice(myOnHand[MUST], MUST);
myPrices[CLOV] = scr_CalculatePrice(myOnHand[CLOV], CLOV);
myPrices[NUTM] = scr_CalculatePrice(myOnHand[NUTM], NUTM);
myPrices[SESA] = scr_CalculatePrice(myOnHand[SESA], SESA);
myPrices[CINN] = scr_CalculatePrice(myOnHand[CINN], CINN);
myPrices[SAFF] = scr_CalculatePrice(myOnHand[SAFF], SAFF);
myPrices[VANI] = scr_CalculatePrice(myOnHand[VANI], VANI);


// GET COSTS
myCosts[ROSE] = scr_CalculateCost(obj_MyBarrels.CostRosemary, obj_MyBarrels.Rosemary);
myCosts[PAPR] = scr_CalculateCost(obj_MyBarrels.CostPaprika, obj_MyBarrels.Paprika);
myCosts[BASI] = scr_CalculateCost(obj_MyBarrels.CostBasil, obj_MyBarrels.Basil);
myCosts[THYM] = scr_CalculateCost(obj_MyBarrels.CostThyme, obj_MyBarrels.Thyme);
myCosts[CUMI] = scr_CalculateCost(obj_MyBarrels.CostCumin, obj_MyBarrels.Cumin);
myCosts[CANE] = scr_CalculateCost(obj_MyBarrels.CostSugar, obj_MyBarrels.CaneSugar);
myCosts[PEPP] = scr_CalculateCost(obj_MyBarrels.CostPepper, obj_MyBarrels.Pepper);
myCosts[TURM] = scr_CalculateCost(obj_MyBarrels.CostTurmeric, obj_MyBarrels.Turmeric);
myCosts[GARL] = scr_CalculateCost(obj_MyBarrels.CostGarlic, obj_MyBarrels.GarlicPowder);
myCosts[GING] = scr_CalculateCost(obj_MyBarrels.CostGinger, obj_MyBarrels.GingerPowder);
myCosts[SALT] = scr_CalculateCost(obj_MyBarrels.CostSalt, obj_MyBarrels.Salt);
myCosts[MUST] = scr_CalculateCost(obj_MyBarrels.CostMustard, obj_MyBarrels.MustardSeed);
myCosts[CLOV] = scr_CalculateCost(obj_MyBarrels.CostCloves, obj_MyBarrels.Cloves);
myCosts[NUTM] = scr_CalculateCost(obj_MyBarrels.CostNutmeg, obj_MyBarrels.Nutmeg);
myCosts[SESA] = scr_CalculateCost(obj_MyBarrels.CostSesame, obj_MyBarrels.Sesame);
myCosts[CINN] = scr_CalculateCost(obj_MyBarrels.CostCinnamon, obj_MyBarrels.Cinnamon);
myCosts[SAFF] = scr_CalculateCost(obj_MyBarrels.CostSaffron, obj_MyBarrels.Saffron);
myCosts[VANI] = scr_CalculateCost(obj_MyBarrels.CostVanilla, obj_MyBarrels.Vanilla);
