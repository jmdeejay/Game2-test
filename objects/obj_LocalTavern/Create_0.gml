/// @description CREATE DS MAPS

myLocation = VAIO;
mySubtotal = 0;

mySeamanCount = 0;
myCookCount = 0;
myGunnerCount = 0;
myTotalHireCount = 0;

NewSeamen = ds_map_create();

ds_map_add(NewSeamen, "ItemName", "Seaman");
ds_map_add(NewSeamen, "ItemDescription", @"Required to set sail. Contributes to Ship Readiness.");

NewCook = ds_map_create();

ds_map_add(NewCook, "ItemName", "Cook");
ds_map_add(NewCook, "ItemDescription", "Required to take passengers. Does not contribute Readiness");

NewGunner = ds_map_create();

ds_map_add(NewGunner, "ItemName", "Gunner");
ds_map_add(NewGunner, "ItemDescription", "Required to man guns. Contributes less Readiness.");

myMenu = ds_list_create();

ds_list_add(myMenu, NewSeamen);
ds_list_mark_as_map(myMenu, 0);

ds_list_add(myMenu, NewCook);
ds_list_mark_as_map(myMenu, 1);

ds_list_add(myMenu, NewGunner);
ds_list_mark_as_map(myMenu, 2);


