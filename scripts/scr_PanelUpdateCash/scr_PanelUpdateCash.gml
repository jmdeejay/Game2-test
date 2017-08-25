//Invoked By: obj_Panel User Event 0
// argument0 is a string, "Account" or "Shark Loan";

var _title = argument0;
switch (_title)
{
	case "Account": 
	myRightTexts[0] = scr_CurrencyFormat(obj_MyLedger.Savings, 0, 2, 3);
	myRightTexts[3] = scr_CurrencyFormat(obj_MyLedger.Cash, 0, 2, 3);
	myRightTexts[4] = scr_CurrencyFormat(obj_MyLedger.BankLoan, 0, 2, 3);
	myRightTexts[6] = scr_CurrencyFormat(G.AccruedLoan, 0, 2, 3);
	break;
	
	case "Shark Loan":
	myRightTexts[0] = scr_CurrencyFormat(obj_MyLedger.SharkLoan, 0, 2, 3);
	break;
}