/// @description CALC SUBTOTAL
// Invoked by: scr_QtyAdd, scr_QtyMinus

with (obj_InputQty)
{
	other.mySubtotal += itemTotal;
}