/// @description PULL FROM JSON
// Invoked by: Create Event

var _json = "JSON_Events.json"; // in Included Files

var theJsonMap = tmc_json_decode_from_file(_json);

var theList = ds_map_find_value(theJsonMap, "default");
G.totalCards = ds_list_size(theList);
G.cardData = ds_grid_create(G.totalCards, 10);
show_debug_message("LOADING RANDOM EVENTS FROM JSON.")
for (var i = 0; i < G.totalCards; i++)
{
	show_debug_message("Entry " + string(i));
    var theEntry = ds_list_find_value(theList, i);
    global.cardData[# i, CARD] = theEntry[? "CARD"];
	show_debug_message("Loaded Card: " + global.cardData[# i, CARD]);
    global.cardData[# i, TITLE] = theEntry[? "TITLE"];
	show_debug_message("Loaded Title: " + global.cardData[# i, TITLE]);
    global.cardData[# i, IMAGE] = theEntry[? "IMAGE"];
    show_debug_message("Loaded Sprite: " + global.cardData[# i, IMAGE]);
	global.cardData[# i, DESCRIPTION] = theEntry[? "DESCRIPTION"];
	show_debug_message("Loaded Description: " + global.cardData[# i, DESCRIPTION]);
    global.cardData[# i, CATEGORY] = theEntry[? "CATEGORY"];
	show_debug_message("Loaded Category: " + global.cardData[# i, CATEGORY]);
    global.cardData[# i, AMOUNT] = theEntry[? "AMOUNT"];
	show_debug_message("Loaded Amount (integer): " + string(global.cardData[# i, AMOUNT]));
    global.cardData[# i, TYPE] = theEntry[? "TYPE"];
	show_debug_message("Loaded Type: " + global.cardData[# i, TYPE]);
	global.cardData[# i, ISCHOICE] = theEntry[? "ISCHOICE"];
	show_debug_message("Loaded isChoice: " + string(global.cardData[# i, ISCHOICE]));
	global.cardData[# i, YESGOTO] = theEntry[? "YESGOTO"];
	show_debug_message("Loaded YesGoto: " + global.cardData[# i, YESGOTO]);
	global.cardData[# i, NOGOTO] = theEntry[? "NOGOTO"];
	show_debug_message("Loaded NoGoto: " + global.cardData[# i, NOGOTO]);
}

show_debug_message("FINISHED LOADING RANDOM EVENTS.")
// DESTROY DATA STRUCTURES
ds_map_destroy(theJsonMap);