/// @description INIT GRID
tracerX = 0; // for spawning tracer
tracerY = 0; // for spawning tracer

var cell_width = 2;
var cell_height = 2;

var hcells = (obj_hexMap.cmax div cell_width) * 33;
var vcells = (obj_hexMap.rmax div cell_height) * 22;

global.ourGrid = mp_grid_create(70,50, hcells, vcells, cell_width, cell_height);



alarm_set(0, 20); // Spawn the Tracer object