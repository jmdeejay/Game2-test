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
	
	case 5: // Mode5 means buy a spice
	// How Many Barrels do I already have?
	var tempBarrels = obj_MyBarrels.MyBarrels[# 0, G.SpiceToBuy]
	
	// Do I have enough money?
	var _subtotal = obj_InputCash.printNumber *  obj_LocalMarket.myPrices[G.SpiceToBuy]; // Qty * Cost
	if (_subtotal > obj_MyLedger.Cash) // Does this cost too much?
	{	
		show_debug_message("Transaction FAILED");
		exit; // Don't proceed with the transaction
	}
	else 
	{
	show_debug_message("Subtotal is: " + string(_subtotal));
	show_debug_message("Transaction complete.");
	obj_MyLedger.Cash -= _subtotal; /// NOT WORKING? WHY?
	show_debug_message("Current Cash is: " + string(obj_MyLedger.Cash))
	}
	
	// Do I have enough space on my boat?
	if (obj_InputCash.printNumber + G.CurrentBarrels > G.MaxBarrels) 
		obj_InputCash.printNumber -= (obj_InputCash.printNumber + G.CurrentBarrels) - G.MaxBarrels; 
		// printNumber is too big to fit on ship, make it smaller.
		
	// Subtract Quantity from MrktGrid myGrid
	ds_grid_set(obj_MrktGrid.myGrid, 2, G.SpiceToBuy, (obj_PopUp.valueOne - obj_InputCash.printNumber));
	// Add Quantity to the Boat
	ds_grid_set(obj_MyBarrels.MyBarrels, 0, G.SpiceToBuy, (tempBarrels + obj_InputCash.printNumber));
	with (obj_MyBarrels)
	{
		event_user(0); // Update Current Barrels
	}
	
	
	obj_PopUp.valueOne = ds_grid_get(obj_MrktGrid.myGrid, 2, G.SpiceToBuy); // Update numbers displayed
	obj_PopUp.valueTwo = (G.MaxBarrels - G.CurrentBarrels);	 // Update numbers 	
	obj_InputCash.printNumber = 0;
	keyboard_string = "0";
	obj_InputCash.isManual = false;
	obj_PopUp.image_blend = c_white;
	
	break; // All done with Buy Barrels
}