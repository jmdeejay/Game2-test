// Invoked by: obj_AllPassengers - Room Start Event
// Argument0 is CurrentTown, which means you do NOT include that town in the average.
// Must return the AVERAGE

var _excludedTown = argument0; 

var _grid = ds_grid_create(1, 8)

_grid[# 0, 0] = 0;
_grid[# 0, VAIO] = G.VaiosAttract;
_grid[# 0, DOMO] = G.DomosAttract;
_grid[# 0, CHIRS] = G. ChirskAttract;
_grid[# 0, BARC] = G.BarcellusAttract;
_grid[# 0, ZAND] = G.ZandrettaAttract;
_grid[# 0, SYRR] = G.SyrrAttract;
_grid[# 0, KAND] = G.KandaAttract;

var _sum = 0;

for (var i = 1; i < 7; i++)
{
	if (i == _excludedTown)
		continue;
	_sum += _grid[# 0, i]
}

var _average = _sum / 6;

ds_grid_destroy(_grid);

return _average;