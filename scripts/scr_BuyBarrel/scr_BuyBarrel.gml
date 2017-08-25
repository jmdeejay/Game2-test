// Invoked by: obj_ButtonBuy
// The purpose is to take ystart, use a numerator against the entire height of the market grid. Round that
// quotient to a number between 0 - 18. That number will represent which spice to transact against.


var _spot = ystart + (sprite_height div 2); // Get the center of the row

var thisSpice = _spot / 14;
thisSpice = floor(thisSpice) - 5; // Should return a whole number equal to 0 - 18.
G.SpiceToBuy = thisSpice; // Proper Spice assigned.

ds_stack_push(G.stateStack, GameState.MRK_BuyBarrel);