/// @description INIT BARRELS

G.CurrentBarrels = 0;
G.MaxBarrels = 0;


// BARREL QUANTITIES
Rosemary = 0;
Paprika = 0;
Basil = 0;
Thyme = 0;
Cumin = 0;
CaneSugar = 0;
Pepper = 0;
Turmeric = 0;
GarlicPowder = 0;
GingerPowder = 0;
Salt = 0;
MustardSeed = 0;
Cloves = 0;
Nutmeg = 0;
Sesame = 0;
Cinnamon = 0;
Saffron = 0;
Vanilla = 0;

CurrentCannons = 0;
AmmoBarrels = 0;
Passengers = 0;

MyBarrels = ds_grid_create(1, 21);

ds_grid_set(MyBarrels, 0,0, Rosemary);
ds_grid_set(MyBarrels, 0,1, Paprika);
ds_grid_set(MyBarrels, 0,2, Basil);
ds_grid_set(MyBarrels, 0,3, Thyme);
ds_grid_set(MyBarrels, 0,4, Cumin);
ds_grid_set(MyBarrels, 0,5, CaneSugar);
ds_grid_set(MyBarrels, 0,6, Pepper);
ds_grid_set(MyBarrels, 0,7, Turmeric);
ds_grid_set(MyBarrels, 0,8, GarlicPowder);
ds_grid_set(MyBarrels, 0,9, GingerPowder);
ds_grid_set(MyBarrels, 0,10, Salt);
ds_grid_set(MyBarrels, 0,11, MustardSeed);
ds_grid_set(MyBarrels, 0,12, Cloves);
ds_grid_set(MyBarrels, 0,13, Nutmeg);
ds_grid_set(MyBarrels, 0,14, Sesame);
ds_grid_set(MyBarrels, 0,15, Cinnamon);
ds_grid_set(MyBarrels, 0,16, Saffron);
ds_grid_set(MyBarrels, 0,17, Vanilla);

ds_grid_set(MyBarrels, 0,18, Passengers);
ds_grid_set(MyBarrels, 0,19, CurrentCannons);
ds_grid_set(MyBarrels, 0,20, AmmoBarrels);

// RUNNING SUM COSTS
myRunningCosts = ds_list_create()

for (var i = 0; i < 18; i++)
	ds_list_add(myRunningCosts, 0) // Fill a list of 17 slots, full of zeroes.