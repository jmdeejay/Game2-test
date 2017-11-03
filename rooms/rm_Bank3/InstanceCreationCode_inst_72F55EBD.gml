myPath = pth_Bnk_LeftPanel;
myTicks = 15;

myTitle = "Account";

myLeftTexts[0] = "Balance: ";
myLeftTexts[1] = "Interest: ";
myLeftTexts[2] = "Earned: ";
myLeftTexts[3] = "Cash: ";
myLeftTexts[4] = "Borrowed: ";
myLeftTexts[5] = "Interest: ";
myLeftTexts[6] = "Accrued: ";

myRightTexts[0] = scr_CurrencyFormat(obj_MyLedger.Savings, 0, 2, 3);
myRightTexts[1] = string(G.SavingsInterest * 100) + @"%";
myRightTexts[2] = scr_CurrencyFormat(G.AccruedSavings, 0, 2, 3);
myRightTexts[3] = scr_CurrencyFormat(obj_MyLedger.Cash, 0, 2, 3);
myRightTexts[4] = scr_CurrencyFormat(obj_MyLedger.BankLoan, 0, 2, 3);
myRightTexts[5] = string(G.LoanInterest * 100) + @"%";
myRightTexts[6] = scr_CurrencyFormat(G.AccruedLoan, 0, 2, 3);

