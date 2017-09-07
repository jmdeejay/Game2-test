/// Objective: Return the total number of Barrels on a ship.

var sum = ds_grid_get_sum(MyBarrels, 0, 0, 0, 22);
show_debug_message("Current Barrels is: " + string(sum));
return sum;