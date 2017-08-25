/// @description NEW GAME START
// Invoked By: scr_StartNewGame


show_debug_message("BEGIN WORLD QTY TABLE CREATION");
var i, j;
i = 0;
j = 0;
repeat (ds_grid_width(global.worldQtyTable))
   {
   repeat (ds_grid_height(global.worldQtyTable))
      {
	  
      ds_grid_set(global.worldQtyTable, i, j, irandom_range(15,150));
      j += 1;
      }
   j = 0;
   i += 1;
}

ds_grid_set(G.worldQtyTable, 0, 0, "Rosemary");
ds_grid_set(G.worldQtyTable, 0, 1, "Paprika");
ds_grid_set(G.worldQtyTable, 0, 2, "Basil");
ds_grid_set(G.worldQtyTable, 0, 3, "Thyme");
ds_grid_set(G.worldQtyTable, 0, 4, "Cumin");
ds_grid_set(G.worldQtyTable, 0, 5, "Cane Sugar");
ds_grid_set(G.worldQtyTable, 0, 6, "Pepper");
ds_grid_set(G.worldQtyTable, 0, 7, "Turmeric");
ds_grid_set(G.worldQtyTable, 0, 8, "Garlic");
ds_grid_set(G.worldQtyTable, 0, 9, "Ginger");
ds_grid_set(G.worldQtyTable, 0, 10, "Salt");
ds_grid_set(G.worldQtyTable, 0, 11, "Mustard Seed");
ds_grid_set(G.worldQtyTable, 0, 12, "Cloves");
ds_grid_set(G.worldQtyTable, 0, 13, "Nutmeg");
ds_grid_set(G.worldQtyTable, 0, 14, "Sesame");
ds_grid_set(G.worldQtyTable, 0, 15, "Cinnamon");
ds_grid_set(G.worldQtyTable, 0, 16, "Saffron");
ds_grid_set(G.worldQtyTable, 0, 17, "Vanilla");

show_debug_message("END WORLD QTY TABLE CREATION");