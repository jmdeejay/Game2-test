myPath = pth_Bnk_RightPanel;
myTicks = 30;
myTitle = "Shark Loan";

myLeftTexts[0] = "Borrowed: ";
myLeftTexts[1] = "Interest: ";
myLeftTexts[2] = "Accrued: ";
myLeftTexts[3] = "";
myLeftTexts[4] = "";
myLeftTexts[5] = "";
myLeftTexts[6] = "";

myRightTexts[0] = scr_CurrencyFormat(obj_MyLedger.SharkLoan, 0, 2, 3);
myRightTexts[1] = string(G.SharkInterest * 100) + @"%";
myRightTexts[2] = scr_CurrencyFormat(G.AccruedShark, 0, 2, 3);
myRightTexts[3] = "";
myRightTexts[4] = "";
myRightTexts[5] = "";
myRightTexts[6] = "";