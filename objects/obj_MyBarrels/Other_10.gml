/// @description SUM BARRELS
// Invoked by: scr_OKDeposit, scr_StartNewGame

var _barrels = scr_SumBarrels();

if (_barrels <= G.MaxBarrels)
	G.CurrentBarrels = _barrels;