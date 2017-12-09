/// @description PULL FROM JSON
// Invoked by: Create Event

var _json = "JSON_Events.json"; // in Included Files

var theJsonMap = tmc_json_decode_from_file(_json);

var theList = ds_map_find_value(theJsonMap, "default");
G.totalCards = ds_list_size(theList);
G.cardData = ds_grid_create(G.totalCards,7);
for (var i = 0; i < G.totalCards; i++)
{
    var theEntry = ds_list_find_value(theList, i);
    global.cardData[# i, CARD] = theEntry[? "CARD"];
    global.cardData[# i, TITLE] = theEntry[? "TITLE"];
    global.cardData[# i, IMAGE] = theEntry[? "IMAGE"];
    global.cardData[# i, DESCRIPTION] = theEntry[? "DESCRIPTION"];
    global.cardData[# i, CATEGORY] = theEntry[? "CATEGORY"];
    global.cardData[# i, AMOUNT] = theEntry[? "AMOUNT"];
    global.cardData[# i, TYPE] = theEntry[? "TYPE"];
}

// DESTROY DATA STRUCTURES
ds_map_destroy(theJsonMap);