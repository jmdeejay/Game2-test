/// @description DEPRESS

x = xstart + 2;
y = ystart + 2;
myColor = pressedColor;
alarm_set(1, 12);

switch (myTitle)
{
	case "Save":
	ds_stack_push(G.stateStack, GameState.BNK_Deposit); // Time to make a deposit
	with (obj_ButtonOk)
	{
		myMode = 0;
	}
	break;
	
	case "Take":
	ds_stack_push(G.stateStack, GameState.BNK_Withdraw); // Time to withdraw some money
	with (obj_ButtonOk)
	{
		myMode = 1;
	}
	break;
	
	case "Borrow":
	ds_stack_push(G.stateStack, GameState.BNK_Borrow); // Time to withdraw some money
	with (obj_ButtonOk)
	{
		myMode = 2;
	}
	break;
	
	case "Repay":
	ds_stack_push(G.stateStack, GameState.BNK_Repay); // Time to withdraw some money
	with (obj_ButtonOk)
	{
		myMode = 3;
	}
	break;
	
	case "Shark":
	ds_stack_push(G.stateStack, GameState.BNK_PayShark); // Time to withdraw some money
	with (obj_ButtonOk)
	{
		myMode = 4;
	}
	break;

}