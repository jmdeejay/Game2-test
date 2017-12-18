/// @description SET UP CARD
// Invoked by: Step Event

var thisTitle = "";
var thisImage = noone;
var thisDescription = "";
var thisCategory = "";
var thisAmount = 0;
var thisType = "";
var thisChoice = false;
var thisYes = "";
var thisNo = "";

 // Does the random code exist in the grid?
if (ds_grid_value_exists(G.cardData, 0, CARD, G.totalCards, CARD, myID))
{
	var _column = ds_grid_value_x(G.cardData, 0, CARD, G.totalCards, CARD, myID)
	thisTitle = G.cardData[# _column, TITLE];
	thisImage = asset_get_index(G.cardData[# _column, IMAGE]);
	thisDescription = G.cardData[# _column, DESCRIPTION];
	thisCategory = G.cardData[# _column, CATEGORY];
	thisAmount = G.cardData[# _column, AMOUNT];
	thisType = G.cardData[# _column, TYPE];
	thisChoice = G.cardData[# _column, ISCHOICE];
	thisYes = G.cardData[# _column, YESGOTO];
	thisNo = G.cardData[# _column, NOGOTO];	
} else
{
	switch (slotOne)
	{
		case "B":
		show_debug_message("Bad Event " + myID + " does not exist. Reverting to default.");
		myID = "BAA";
		break;
		
		case "N":
		show_debug_message("Neutral Event " + myID + " does not exist. Reverting to default.");
		myID = "NAA";
		break;
		
		case "G":
		show_debug_message("Good Event " + myID + " does not exist. Reverting to default.");
		myID = "GAA";
		break;
	}
}

var _x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) div 2);
var _y = camera_get_view_y(view_camera[0]) + 100;

// Spawn Random card with values pulled from ds grid totalCards 
var thisCard = instance_create_layer(_x, _y, "Instances", obj_RandomCard);
thisCard.myCode = myID;
thisCard.myTitle = thisTitle;
thisCard.myDescription = thisDescription;
thisCard.myCategory = thisCategory;
thisCard.myAmount = thisAmount;
thisCard.myType = thisType;
thisCard.isDecision = thisChoice;
thisCard.yesGoto = thisYes;
thisCard.noGoto = thisNo;
