/// @description INIT VARIABLES
// All of the assets and debts of the Player

// ASSETS //
Cash = 0;
Savings = 0;
Rations = 0;


// LIABILITIES //
SharkLoan = 0;
BankLoan = 0;
CrewPay = 0;
Taxes = 0;

MyLedger = ds_map_create();

ds_map_add(MyLedger, "Cash", Cash);
ds_map_add(MyLedger, "Savings", Savings);
ds_map_add(MyLedger, "Rations", Rations);

ds_map_add(MyLedger, "SharkLoan", SharkLoan);
ds_map_add(MyLedger, "BankLoan", BankLoan);
ds_map_add(MyLedger, "CrewPay", CrewPay);
ds_map_add(MyLedger, "Taxes", Taxes);

