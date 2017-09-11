/// @description INIT GLOBALS AND ENUMS

enum GameState
{
	GameStart,
	TitleScreen,
	NewGameScreen,
	ChooseCharacterScreen,
	ChooseBoatScreen,
	MapScreen,
	InTownScreen,
	BuildingDialog,
	StoreDescription,
	BuildingTransaction,
	BNK_Deposit,
	BNK_Withdraw,
	BNK_CancelTransaction,
	BNK_Borrow,
	BNK_Repay,
	BNK_PayShark,
	MRK_BuyBarrel,
	MRK_SellBarrel,
	Cutscene
}

G.gameState = GameState.GameStart;
G.stateStack = ds_stack_create();
ds_stack_push(G.stateStack, GameState.GameStart);