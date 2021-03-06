/// @description INIT VARS

// TURNS
G.TurnCount = 1;

// MAP SCREEN
G.ServingsPerRation = 50;
G.MilesPerTile = 60;
G.PASSENGERS_MAX = 255;
G.StandardTicketPrice = 1000;
G.RandomChance = 0.10;


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

// MORALE

G.MoraleNoEvent = -10;
G.MoraleBadEvent = -15;
G.MoraleWitnessPunishment = -18;
G.MoraleWitnessMercy = 5;
G.MoraleBePunished = -50;
G.MoraleFortuneEvent = 5;
G.MoraleGoodCrew = 10;
G.MoraleWonBattle = 15;
G.MoraleLostBattle = -30;
G.MoraleGetPaid = 20;
G.MoraleGetPartialPay = -15;

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


// TAXES
G.PassengerTaxRate = 0.10;
G.SpiceTaxRate = 0.05;

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



