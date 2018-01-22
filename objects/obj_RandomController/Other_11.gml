/// @description SET UP CARD
// Invoked by: Step Event

 // Does the random code exist in the grid?
if (ds_grid_value_exists(G.cardData, 0, CARD, G.totalCards, CARD, myID))
{
	scr_SpawnCard(myID);
} else
{
	switch (slotOne)
	{
		case "B":
		show_debug_message("Bad Event " + myID + " does not exist. Reverting to default.");
		myID = "BAA";
		scr_SpawnCard(myID);
		break;
		
		case "C":
		show_debug_message("Neutral Event " + myID + " does not exist. Reverting to default.");
		myID = "CAA";
		scr_SpawnCard(myID);
		break;
		
		case "A":
		show_debug_message("Good Event " + myID + " does not exist. Reverting to default.");
		myID = "AAA";
		scr_SpawnCard(myID);
		break;
	}
}
