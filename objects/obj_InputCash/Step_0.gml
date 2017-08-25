/// @description MOUSE CLICK EVNT

if (visible == true)
{
	if point_in_rectangle(mouse_x, mouse_y, x, y, x+myWidth, y+myHeight)
	{
		if mouse_check_button_released(mb_left)
		{
			obj_PopUp.image_blend = c_dkgray;
			keyboard_string = "0";
			isManual = true;
		}
	}
}

if (isManual)
{

	obj_PopUp.myTitle = "Enter Amount";
	keyboard_string = string_digits(keyboard_string);
	myText = keyboard_string;
	var _checkNumber = int64(myText);
	
	switch (obj_ButtonOk.myMode)
	{
	
		case 0: // Make a deposit? Can't deposit more than you have.
		if (_checkNumber > obj_MyLedger.Cash)
			_checkNumber = obj_MyLedger.Cash
		break;
		
		case 1: // Make a withdrawal? Can't withdraw more than you have.
		if (_checkNumber > obj_MyLedger.Savings)
			_checkNumber = obj_MyLedger.Savings
		break;
		
		case 2: // Take a loan? Can't take more than your credit limit.
		if (_checkNumber > G.BankCreditLimit)
			_checkNumber = G.BankCreditLimit;
		break;
		
		case 3: // Repay a loan? Can't repay more than you owe.
		if (_checkNumber > obj_MyLedger.BankLoan)
			_checkNumber = obj_MyLedger.BankLoan;
		break;
		
		case 4: // Repay the shark loan? Can't repay more than you owe.
		if (_checkNumber > obj_MyLedger.SharkLoan)
			_checkNumber = obj_MyLedger.SharkLoan;
		break;
		
		case 5: // Buying spice? Can't buy more than what's available.
		if (_checkNumber > obj_PopUp.valueOne)
			_checkNumber = obj_PopUp.valueOne;
		break;
		
	}
	
	printNumber = _checkNumber;	
}

