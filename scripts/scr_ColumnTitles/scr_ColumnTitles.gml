// Invoked by: obj_MrktSupply **EXCLUSIVE**
// Accepts 6 arguments, one for each column title.

with (obj_ParentColumnTitle)
{
	sprite_index = spr_ColumnSupply;
}

obj_YourCargo.image_index = argument0;
obj_Available.image_index = argument1;
obj_YouPaid.image_index = argument2;
obj_PriceHere.image_index = argument3;
obj_LowestPrice.image_index = argument4;
obj_HighestPrice.image_index = argument5;