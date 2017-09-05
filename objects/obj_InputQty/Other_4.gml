/// @description RESET STRING, FIND SELL
keyboard_string = "0";
minusButton = instance_nearest(x + myWidth, y, obj_ButtonQty);

switch (localGood)
{
	case "ItemRations":
	itemPrice = obj_LocalStore.ItemRations[? "ItemPrice"];
	break;
	
	case "ItemAmmo":
	itemPrice = obj_LocalStore.ItemAmmo[? "ItemPrice"];
	break;

}