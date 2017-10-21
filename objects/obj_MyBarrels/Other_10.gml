/// @description SUM BARRELS
// Invoked by: scr_OKDeposit, scr_StartNewGame, scr_BoardPassengers

var _barrels = scr_SumBarrels();

if (_barrels <= G.MaxBarrels)
	G.CurrentBarrels = _barrels;