// Invoked by: obj_LocalMarket
// argument0 is an integer representing quantity of barrels of a spice
// argument1 is an integer representing WHICH spice is being calculated.
// Returns the calculated price back to obj_LocalMarket. In general, a low value for argument0 will
// return a higher price.

var theseBarrels = argument0;
var spiceType = argument1;
var calculatedPrice = 0; // Return at end with calculated price.
var supplyPercent = 0;
var hiRange = 0;
var lowRange = 0;

// Calculate the Supply Percent of the barrels. 
if (theseBarrels > G.MaxSupply)
{
	supplyPercent = 1; // If supply is over-saturated, set the percent to 100 %
	
} else if (theseBarrels < G.MaxSupply)
	supplyPercent = theseBarrels / G.MaxSupply; // Should be between 0 and 1

switch (spiceType)
{
	case ROSE:
	lowRange = ds_grid_get(G.worldRanges, 0, 0); // Should return the lowest price for Rosemary	
	hiRange = ds_grid_get(G.worldRanges, 1, 0);// Should return the highest price for Rosemary
	break;
	
	case PAPR:
	lowRange = ds_grid_get(G.worldRanges, 0, 1); // Should return the lowest price for Paprika	
	hiRange = ds_grid_get(G.worldRanges, 1, 1);// Should return the highest price for Paprika	
	break;
	
	case BASI:
	lowRange = ds_grid_get(G.worldRanges, 0, 2); // Should return the lowest price for Basil	
	hiRange = ds_grid_get(G.worldRanges, 1, 2);// Should return the highest price for Basil	
	break;
	
	case THYM:
	lowRange = ds_grid_get(G.worldRanges, 0, 3); // Should return the lowest price for Thyme	
	hiRange = ds_grid_get(G.worldRanges, 1, 3);// Should return the highest price for Thyme		
	break;
	
	case CUMI:
	lowRange = ds_grid_get(G.worldRanges, 0, 4); // Should return the lowest price for Cumin	
	hiRange = ds_grid_get(G.worldRanges, 1, 4);// Should return the highest price for Cumin	
	break;
	
	case CANE:
	lowRange = ds_grid_get(G.worldRanges, 0, 5); // Should return the lowest price for Cane Sugar	
	hiRange = ds_grid_get(G.worldRanges, 1, 5);// Should return the highest price for Cane Sugar	
	break;	
	
	case PEPP:
	lowRange = ds_grid_get(G.worldRanges, 0, 6); // Should return the lowest price for Pepper	
	hiRange = ds_grid_get(G.worldRanges, 1, 6);// Should return the highest price for Pepper
	break;	
	
	case TURM:
	lowRange = ds_grid_get(G.worldRanges, 0, 7); // Should return the lowest price for Turmeric	
	hiRange = ds_grid_get(G.worldRanges, 1, 7);// Should return the highest price for Turmeric
	break;
	
	case GARL:
	lowRange = ds_grid_get(G.worldRanges, 0, 8); // Should return the lowest price for Garlic	
	hiRange = ds_grid_get(G.worldRanges, 1, 8);// Should return the highest price for Garlic		
	break;
	
	case GING:
	lowRange = ds_grid_get(G.worldRanges, 0, 9); // Should return the lowest price for Ginger	
	hiRange = ds_grid_get(G.worldRanges, 1, 9);// Should return the highest price for Ginger	
	break;
	
	case SALT:
	lowRange = ds_grid_get(G.worldRanges, 0, 10); // Should return the lowest price for Salt	
	hiRange = ds_grid_get(G.worldRanges, 1, 10);// Should return the highest price for Salt	
	break;
	
	case MUST:
	lowRange = ds_grid_get(G.worldRanges, 0, 11); // Should return the lowest price for Mustard	
	hiRange = ds_grid_get(G.worldRanges, 1, 11);// Should return the highest price for Mustard	
	break;
	
	case CLOV:
	lowRange = ds_grid_get(G.worldRanges, 0, 12); // Should return the lowest price for Cloves	
	hiRange = ds_grid_get(G.worldRanges, 1, 12);// Should return the highest price for Cloves	
	break;
	
	case NUTM:
	lowRange = ds_grid_get(G.worldRanges, 0, 13); // Should return the lowest price for Nutmeg	
	hiRange = ds_grid_get(G.worldRanges, 1, 13);// Should return the highest price for Nutmeg	
	break;
	
	case SESA:
	lowRange = ds_grid_get(G.worldRanges, 0, 14); // Should return the lowest price for Sesame	
	hiRange = ds_grid_get(G.worldRanges, 1, 14);// Should return the highest price for Sesame	
	break;
	
	case CINN:
	lowRange = ds_grid_get(G.worldRanges, 0, 15); // Should return the lowest price for Cinnamon	
	hiRange = ds_grid_get(G.worldRanges, 1, 15);// Should return the highest price for Cinnamon	
	break;
	
	case SAFF:
	lowRange = ds_grid_get(G.worldRanges, 0, 16); // Should return the lowest price for Saffron	
	hiRange = ds_grid_get(G.worldRanges, 1, 16);// Should return the highest price for Saffron	
	break;
	
	case VANI:
	lowRange = ds_grid_get(G.worldRanges, 0, 17); // Should return the lowest price for Vanilla	
	hiRange = ds_grid_get(G.worldRanges, 1, 17);// Should return the highest price for Vanilla	
	break;
	
} // Great, now we have a value for what spice we're calculating a market price for.

if (supplyPercent == 0) // If this number is zero than we SHOULDN'T DIVIDE BY ZERO
{
	calculatedPrice = hiRange; // We're at Zero supply, set the price to max.
	return (calculatedPrice);
}
	else if ((lowRange / supplyPercent) >= hiRange) // If supply is low enough, the resulting quotient
{													// can be larger than the hi range.
	calculatedPrice = hiRange;						// Set it to the hi range. Gotta clamp/constrain.
	return (calculatedPrice);
}
	else if ((lowRange / supplyPercent) < hiRange)	// If the supply is somewhere between 0% and 100%	
{
	calculatedPrice = lowRange / supplyPercent;
	return (floor(calculatedPrice)); // Gotta floor it to return an integer value.
}		