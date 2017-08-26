//Invoked by: obj_ButtonOk
// argument0 is button mode: 0 for cash deposit into savings

var _mode = argument0;

switch (_mode)
{
	case 0: // Mode0 means make a deposit
	obj_MyLedger.Savings += obj_InputCash.printNumber; // Add to Savings
	obj_MyLedger.Cash -= obj_InputCash.printNumber; // Subtract from Cash
	obj_PopUp.valueOne = obj_MyLedger.Cash; // Update numbers displayed
	obj_PopUp.valueTwo = obj_MyLedger.Savings // Update numbers displayed
		
	obj_InputCash.printNumber = 0; // Reset inputs
	keyboard_string = "0"; // Reset inputs
	with (obj_Panel)          // Out of the panels in the room...
	{
		if (myTitle == "Account") // The one that has my account info...
		{
			event_user(0); // ...Needs to update it's numbers.
		}
	}

	obj_InputCash.isManual = false;
	obj_PopUp.image_blend = c_white;
	
	break; // All done with Deposit

	case 1: // Mode1 means withdraw cash
	obj_MyLedger.Savings -= obj_InputCash.printNumber; // Subtract from Savings
	obj_MyLedger.Cash += obj_InputCash.printNumber; // Add to cash
	obj_PopUp.valueOne = obj_MyLedger.Cash; // Update numbers displayed
	obj_PopUp.valueTwo = obj_MyLedger.Savings // Update numbers displayed
	
	obj_InputCash.printNumber = 0;
	keyboard_string = "0";
	with (obj_Panel)
	{
		if (myTitle == "Account")
		{
			event_user(0);
		}
	}

	obj_InputCash.isManual = false;
	obj_PopUp.image_blend = c_white;
	
	break; // All done with Withdraw
	
	case 2: // Mode2 means borrow money from bank
	if ( (obj_InputCash.printNumber + obj_MyLedger.BankLoan) < G.BankCreditLimit)
	{
		obj_MyLedger.BankLoan += obj_InputCash.printNumber; // Add to the Bank Loan
		obj_MyLedger.Cash += obj_InputCash.printNumber; // Add to the Cash
	}
	
	obj_PopUp.valueOne = obj_MyLedger.Cash; // Update numbers displayed	
	obj_InputCash.printNumber = 0;
	keyboard_string = "0";
	with (obj_Panel)
	{
		if (myTitle == "Account")
		{
			event_user(0);
		}
	}
	obj_InputCash.isManual = false;
	obj_PopUp.image_blend = c_white;
	
	break; // All done with Borrow
	
	case 3: // Mode3 means repay money from bank

	obj_MyLedger.BankLoan -= obj_InputCash.printNumber; // Subtract from the Bank Loan
	obj_MyLedger.Cash -= obj_InputCash.printNumber; // Add to the Cash

	obj_PopUp.valueOne = obj_MyLedger.Cash; // Update numbers displayed
	obj_PopUp.valueTwo = obj_MyLedger.BankLoan; // Update numbers 	
	obj_InputCash.printNumber = 0;
	keyboard_string = "0";
	with (obj_Panel)
	{
		if (myTitle == "Account")
		{
			event_user(0);
		}
	}
	obj_InputCash.isManual = false;
	obj_PopUp.image_blend = c_white;
	
	break; // All done with Repay
	
	case 4: // Mode4 means repay the shark loan

	obj_MyLedger.SharkLoan -= obj_InputCash.printNumber; // Subtract from the Bank Loan
	obj_MyLedger.Cash -= obj_InputCash.printNumber; // Add to the Cash

	obj_PopUp.valueOne = obj_MyLedger.Cash; // Update numbers displayed
	obj_PopUp.valueTwo = obj_MyLedger.SharkLoan; // Update numbers 	
	obj_InputCash.printNumber = 0;
	keyboard_string = "0";
	with (obj_Panel)
	{
		if (myTitle == "Shark Loan")
		{
			event_user(0);
		}
	}
	obj_InputCash.isManual = false;
	obj_PopUp.image_blend = c_white;
	
	break; // All done with Repay Shark
	
	////////////////////////////////MARKET ROOM/////////////////////////////////////////////////////////
	case 5: // Mode5 means buy a spice
	// How Many Barrels do I already have?
	var tempBarrels = obj_MyBarrels.MyBarrels[# 0, G.SpiceSelected]
	
	// Do I have enough money?
	var _subtotal = obj_InputCash.printNumber *  obj_LocalMarket.myPrices[G.SpiceSelected]; // Qty * Cost
	// Does this cost too much? Do I have enough space?
	if ((_subtotal > obj_MyLedger.Cash) or (obj_InputCash.printNumber + G.CurrentBarrels > G.MaxBarrels))
	{	
		exit; // Don't proceed with the transaction
	}
	else // We pass both conditions, do everything else below.
	{
	// Deplete Cash reserves
	obj_MyLedger.Cash -= _subtotal;
	// Subtract Quantity from MrktGrid myGrid
	obj_LocalMarket.myOnHand[G.SpiceSelected] = (obj_PopUp.valueOne - obj_InputCash.printNumber);
	// Add Quantity to the Boat
	obj_MyBarrels.MyBarrels[# 0, G.SpiceSelected] = (tempBarrels + obj_InputCash.printNumber);
	// Update Current Barrels on boat
	with (obj_MyBarrels)
	{
		event_user(0)
	}	
	//Update running costs
	obj_MyBarrels.myRunningCosts[| G.SpiceSelected] = _subtotal; // Update running costs
	
	obj_PopUp.valueOne = ds_grid_get(obj_MrktGrid.myGrid, 2, G.SpiceSelected); // Update numbers displayed
	obj_PopUp.valueTwo = (G.MaxBarrels - G.CurrentBarrels);	 // Update numbers 	
	obj_InputCash.printNumber = 0;
	keyboard_string = "0";
	obj_InputCash.isManual = false;
	obj_PopUp.image_blend = c_white;
	}
	
	ds_stack_push(G.stateStack, GameState.BNK_CancelTransaction); // Dismiss PopUp
	break; // All done with Buy Barrels
	
	case 6: // Mode6 means sell a spice ///////////// INCOMPLETE
	
	var tempBarrels = obj_MyBarrels.MyBarrels[# 0, G.SpiceSelected]
	
	// How many barrels am I selling? I can't sell more than I own.
	if (obj_InputCash.printNumber > obj_MyBarrels.MyBarrels[# 0, G.SpiceSelected])
	{
		exit; // Don't Transact
	}
	else
	{
		// How much Cash?
		var _subtotal = obj_InputCash.printNumber * obj_MrktGrid.myGrid[# 4, G.SpiceSelected]
	
		// Add to Cash reserves
		obj_MyLedger.Cash += _subtotal;
	
		// Add Quantity to LocalMarket OnHand
		obj_LocalMarket.myOnHand[G.SpiceSelected] += obj_InputCash.printNumber;
	
		// Subtract Quantity from the Boat
		obj_MyBarrels.MyBarrels[# 0, G.SpiceSelected] -= obj_InputCash.printNumber;
		
		// Upate Current Barrel quantity
		with (obj_MyBarrels)
		{
			event_user(0)
		}	
		// Update Running Costs. Number must be depleted by the percent of barrels remaining.
		obj_MyBarrels.myRunningCosts[| G.SpiceSelected] = 
		obj_MyBarrels.myRunningCosts[| G.SpiceSelected] *
		(1 - (tempBarrels / obj_InputCash.printNumber)) ; // If tempBarrels == printNumber, then product is 0.
		// As in, Zero running sum cost.
		
		// Reset all
		obj_InputCash.printNumber = 0;
		keyboard_string = "0";
		obj_InputCash.isManual = false;
		obj_PopUp.image_blend = c_white;
	}
	
	ds_stack_push(G.stateStack, GameState.BNK_CancelTransaction); // Dismiss PopUp
	
	break; // All done with Sell Barrles
}