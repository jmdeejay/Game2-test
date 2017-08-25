with (obj_Darken)
{
	visible = true;
}

with (obj_PopUp)
{
	visible = true;
	myTitle = "Repay Loan";
	event_user(0);
	labelOne = "Cash: ";
	labelTwo = "Loan: ";
	valueOne = obj_MyLedger.Cash;
	valueTwo = obj_MyLedger.BankLoan;
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
