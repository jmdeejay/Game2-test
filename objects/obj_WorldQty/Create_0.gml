/// @description CREATE DS_GRID

// QUANTITIES
global.worldQtyTable = ds_grid_create(8,18);

// RANGES - THESE NEVER CHANGE (CAN BE MODIFIED TEMPORARILY)
// COLUMN 0 IS LOW, COLUMN 1 IS HIGH
G.worldRanges = ds_grid_create(2,18);

// LOW RANGES
ds_grid_set(G.worldRanges, 0,0, 12); // Rosemary
ds_grid_set(G.worldRanges, 0,1, 18); // Paprika
ds_grid_set(G.worldRanges, 0,2, 19); // Basil
ds_grid_set(G.worldRanges, 0,3, 17); // Thyme
ds_grid_set(G.worldRanges, 0,4, 24); // Cumin
ds_grid_set(G.worldRanges, 0,5, 26); // Cane Sugar
ds_grid_set(G.worldRanges, 0,6, 29); // Pepper
ds_grid_set(G.worldRanges, 0,7, 38); // Turmeric
ds_grid_set(G.worldRanges, 0,8, 40); // Garlic
ds_grid_set(G.worldRanges, 0,9, 51); // Ginger
ds_grid_set(G.worldRanges, 0,10, 25); // Salt
ds_grid_set(G.worldRanges, 0,11, 47); // Mustard
ds_grid_set(G.worldRanges, 0,12, 72); // Cloves
ds_grid_set(G.worldRanges, 0,13, 62); // Nutmeg
ds_grid_set(G.worldRanges, 0,14, 101); // Sesame
ds_grid_set(G.worldRanges, 0,15, 85); // Cinnamon
ds_grid_set(G.worldRanges, 0,16, 110); // Saffron
ds_grid_set(G.worldRanges, 0,17, 120); // Vanilla

// HIGH RANGES
ds_grid_set(G.worldRanges, 1,0, 48); // Rosemary
ds_grid_set(G.worldRanges, 1,1, 72); // Paprika
ds_grid_set(G.worldRanges, 1,2, 76); // Basil
ds_grid_set(G.worldRanges, 1,3, 85); // Thyme
ds_grid_set(G.worldRanges, 1,4, 96); // Cumin
ds_grid_set(G.worldRanges, 1,5, 130); // Cane Sugar
ds_grid_set(G.worldRanges, 1,6, 174); // Pepper
ds_grid_set(G.worldRanges, 1,7, 190); // Turmeric
ds_grid_set(G.worldRanges, 1,8, 200); // Garlic
ds_grid_set(G.worldRanges, 1,9, 204); // Ginger
ds_grid_set(G.worldRanges, 1,10, 225); // Salt
ds_grid_set(G.worldRanges, 1,11, 235); // Mustard
ds_grid_set(G.worldRanges, 1,12, 360); // Cloves
ds_grid_set(G.worldRanges, 1,13, 372); // Nutmeg
ds_grid_set(G.worldRanges, 1,14, 606); // Sesame
ds_grid_set(G.worldRanges, 1,15, 680); // Cinnamon
ds_grid_set(G.worldRanges, 1,16, 880); // Saffron
ds_grid_set(G.worldRanges, 1,17, 960); // Vanilla


// PRICES
G.PriceTable = ds_grid_create(8, 18);