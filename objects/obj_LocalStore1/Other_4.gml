/// @description CALCULATE PRICES

switch (myLocation)
{
	case VAIO:
	var _rPrice = ItemRations[? "ItemPrice"] + G.VaioRationModifier;
	ds_map_replace(ItemRations, "ItemPrice", _rPrice);
	break;
	
	case DOMO:
	var _rPrice = ItemRations[? "ItemPrice"] + G.DomosRationModifier;
	ds_map_replace(ItemRations, "ItemPrice", _rPrice);
	break;
	
	case CHIRS:
	var _rPrice = ItemRations[? "ItemPrice"] + G.ChirskRationModifier;
	ds_map_replace(ItemRations, "ItemPrice", _rPrice);
	break;
	
	case BARC:
	var _rPrice = ItemRations[? "ItemPrice"] + G.BarcellusRationModifier;
	ds_map_replace(ItemRations, "ItemPrice", _rPrice);
	break;
	
	case ZAND:
	var _rPrice = ItemRations[? "ItemPrice"] + G.ZandrettaRationModifier;
	ds_map_replace(ItemRations, "ItemPrice", _rPrice);
	break;
	
	case SYRR:
	var _rPrice = ItemRations[? "ItemPrice"] + G.SyrrRationModifier;
	ds_map_replace(ItemRations, "ItemPrice", _rPrice);
	break;
	
	case KAND:
	var _rPrice = ItemRations[? "ItemPrice"] + G.KandaRationModifier;
	ds_map_replace(ItemRations, "ItemPrice", _rPrice);
	break;
}