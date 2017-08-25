/// @description SUM BARRELS
// Invoked by: scr_OKDeposit, Mode5

var _barrels = scr_SumBarrels();

if (_barrels <= G.MaxBarrels)
	G.CurrentBarrels = _barrels;