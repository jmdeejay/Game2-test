/// @description SWITCH STATES

global.gameState = ds_stack_top(G.stateStack);

if (room != room_first)
{
	switch (global.gameState)
	{
		case GameState.GameStart : scr_GameStart(); break;
		case GameState.TitleScreen : scr_FrontEnd(); break;
		case GameState.NewGameScreen: scr_FrontEnd(); break;
		case GameState.ChooseBoatScreen : scr_FrontEnd(); break;
		case GameState.BuildingDialog : scr_BuildingDialog(); break; // Many frames
		case GameState.BuildingTransaction : scr_BuildingTransaction(); break; // Many frames
		case GameState.BNK_Deposit : scr_BNKDeposit(); break; // runs only 1 frame
		case GameState.BNK_Withdraw : scr_BNKWithdraw(); break; // runs only 1 frame
		case GameState.BNK_Borrow : scr_BNKBorrow(); break; // runs only 1 frame
		case GameState.BNK_Repay : scr_BNKRepay(); break; // runs only 1 frame
		case GameState.BNK_PayShark : scr_BNKShark(); break; // runs only 1 frame
		case GameState.BNK_CancelTransaction : scr_CancelPopTwo(); break; // only 1 frame?
		case GameState.MRK_BuyBarrel : scr_MKTbuy(G.SpiceSelected); break; // Pushed by obj_ButtonBuy scr_BuyBarrel
		case GameState.MRK_SellBarrel : scr_MKTsell(G.SpiceSelected); break; // Pushed by obj_ButtonBuy scr_BuyBarrel
	}
}