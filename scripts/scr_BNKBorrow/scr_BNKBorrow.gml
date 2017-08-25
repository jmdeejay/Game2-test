with (obj_Darken)
{
	visible = true;
}

with (obj_PopUp)
{
	visible = true;
	myTitle = "Borrow Loan";
	event_user(0);
	labelOne = "Cash: ";
	labelTwo = "Limit: ";
	valueOne = obj_MyLedger.Cash;
	valueTwo = G.BankCreditLimit;
}

with (obj_ButtonMoveCash)
{
	visible = true;
}

with (obj_ButtonCancel)
{
	visible = true;
}

with (obj_InputCash)
{
	visible = true;
}
