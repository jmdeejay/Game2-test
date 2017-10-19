/// @description INIT VARS

// TURNS
G.TurnCount = 1;

// MAP SCREEN
G.ServingsPerRation = 50;
G.MilesPerTile = 60;
G.PASSENGERS_MAX = 255;
G.StandardTicketPrice = 1000;

G.DistanceTravelled = 0;
G.DistanceCost = 0;

G.TotalTourismDemand = 0; // Determines overall the max number of Passengers wanting to travel
G.VaiosAttract = 0;
G.DomosAttract = 0;
G.ChirskAttract = 0;
G.BarcellusAttract = 0;
G.ZandrettaAttract = 0;
G.SyrrAttract = 0;
G.KandaAttract = 0;



// SPAWN POINT
G.SpawnX = 95;
G.SpawnY = 650;

// SUPPLY TABLES
G.MaxSupply = 150;

// MARKET BUTTONS
G.SpiceSelected = 0;
G.TownSelected = 0; // Remember, VAIO == 1
G.CurrentTown = VAIO;

// CREW
G.CrewWages = 100;


// STORE PRICE MODIFIERS;

G.VaioRationModifier = 15; // Changes on a turn by turn basis, via Random Events.
G.DomosRationModifier = 10;
G.ChirskRationModifier = 8;
G.BarcellusRationModifier = 12;
G.ZandrettaRationModifier = 14;
G.SyrrRationModifier = 20;
G.KandaRationModifer = 5;

// BANK
G.LoanInterest = 0.05;
G.SharkInterest = 0.04;
G.SavingsInterest = 0.02;
G.AccruedSavings = 0;
G.AccruedLoan = 0;
G.AccruedShark = 0;
G.PreviousSavings = 0;
G.PreviousLoan = 0;
G.PreviousShark = 0;
G.BankCreditLimit = 50000;



