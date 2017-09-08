// Invoked by: obj_ButtonExitStore
// Barrel Inventory gets updated by obj_LocalStore - End Room event, obj_InputQty End Step event

// subtract subtotal from cash
obj_MyLedger.Cash -= obj_LocalStore.mySubtotal;

// leave room
scr_ExitBuilding(G.CurrentTown);