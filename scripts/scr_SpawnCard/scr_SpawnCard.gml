// Invoked by: obj_RandomController User Event 2
// Argument0 is a three-character string used to pull a random event card from the JSON_Events file.
// Spawns a Random Event card
// NOTE: do NOT pass an argument that does not exist in JSON_Events


var thisID = argument0;
var thisTitle = "";
var thisImage = noone;
var thisDescription = "";
var thisCategory = "";
var thisAmount = 0;
var thisType = "";
var thisChoice = false;
var thisYes = "";
var thisNo = "";

var _column = ds_grid_value_x(G.cardData, 0, CARD, G.totalCards, CARD, thisID)
var _x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) div 2);
var _y = camera_get_view_y(view_camera[0]) + 100;

thisTitle = G.cardData[# _column, TITLE];
thisImage = asset_get_index(G.cardData[# _column, IMAGE]);
thisDescription = G.cardData[# _column, DESCRIPTION];
thisCategory = G.cardData[# _column, CATEGORY];
thisAmount = G.cardData[# _column, AMOUNT];
thisType = G.cardData[# _column, TYPE];
thisChoice = G.cardData[# _column, ISCHOICE];
thisYes = G.cardData[# _column, YESGOTO];
thisNo = G.cardData[# _column, NOGOTO];	

// Spawn Random card with values pulled from ds grid totalCards 
var thisCard = instance_create_layer(_x/2, _y/3, "UI", obj_RandomCard);
thisCard.myCode = thisID;
thisCard.myTitle = thisTitle;
thisCard.myImage = thisImage;
thisCard.myDescription = thisDescription;
thisCard.myCategory = thisCategory;
thisCard.myAmount = thisAmount;
thisCard.myType = thisType;
thisCard.isDecision = thisChoice;
thisCard.yesGoto = thisYes;
thisCard.noGoto = thisNo;