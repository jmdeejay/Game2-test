/// @description FIND TARGET
// Invoked by Create Event

if (G.TownSelected != 0)
{
	switch (G.TownSelected)
	{
		case VAIO:
			targetTown = "Port0_1";
			var thisArrow = instance_create_layer(x, y, "UI", obj_TargetArrow);
			thisArrow.myTargetPort = targetTown;
		break;
	
		case DOMO:
			targetTown = "Port10_1";
			var thisArrow = instance_create_layer(x, y, "UI", obj_TargetArrow);
			thisArrow.myTargetPort = targetTown;
		break;
	
		case CHIRS:
			targetTown = "Port22_4";
			var thisArrow = instance_create_layer(x, y, "UI", obj_TargetArrow);
			thisArrow.myTargetPort = targetTown;
		break;
	
		case ZAND:
			targetTown = "Port8_15";
			var thisArrow = instance_create_layer(x, y, "UI", obj_TargetArrow);
			thisArrow.myTargetPort = targetTown;
		break;
	
		case BARC:
			targetTown = "Port1_22";
			var thisArrow = instance_create_layer(x, y, "UI", obj_TargetArrow);
			thisArrow.myTargetPort = targetTown;
		break;
	
		case SYRR:
			targetTown = "Port15_26";
			var thisArrow = instance_create_layer(x, y, "UI", obj_TargetArrow);
			thisArrow.myTargetPort = targetTown;
		break;
	
		case KAND:
			targetTown = "Port24_18";
			var thisArrow = instance_create_layer(x, y, "UI", obj_TargetArrow);
			thisArrow.myTargetPort = targetTown;
		break;
	}
}