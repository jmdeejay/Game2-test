/// @description CREATE DS MAPS

myLocation = VAIO;
mySubtotal = 0;

myRationCount = 0;
myAmmoCount = 0;

ItemRations = ds_map_create();

ds_map_add(ItemRations, "ItemName", "Ration");
ds_map_add(ItemRations, "ItemPrice", 100);
ds_map_add(ItemRations, "ItemDescription", "Sample Text Describes Rations.");

ItemAmmo = ds_map_create();

ds_map_add(ItemAmmo, "ItemName", "Cannon Balls");
ds_map_add(ItemAmmo, "ItemPrice", 110);
ds_map_add(ItemAmmo, "ItemDescription", "Sample Ammo Text Description.");

myMenu = ds_list_create();

ds_list_add(myMenu, ItemRations);
ds_list_mark_as_map(myMenu, 0);

ds_list_add(myMenu, ItemAmmo);
ds_list_mark_as_map(myMenu, 1);


