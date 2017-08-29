/// @description ALARM SET - FILL GRID

alarm_set(0, myTicks);

switch (myLocation)
{
	case VAIO:
	// fill grid with locations 2 thru 7
	scr_FillSupplyPrice(2,3,4,5,6,7);
	break;
	
	case DOMO:
	// fill grid with locations 3 thru 1 (3,4,5,6,7,1)
	scr_FillSupplyPrice(3,4,5,6,7,1);
	break;
	
	case CHIRS:
	// fill grid with locations 4 thru 2 (4, 5, 6, 7, 1, 2,)
	scr_FillSupplyPrice(4,5,6,7,1,2);
	break;
	
	case BARC:
	// fill grid with locations 5 thru 3
	scr_FillSupplyPrice(5,6,7,1,2,3);
	break;
	
	case ZAND:
	// fill grid with locations 6 thru 4
	scr_FillSupplyPrice(6,7,1,2,3,4);
	break;
	
	case SYRR:
	// fill grid with locations 7 thru 5
	scr_FillSupplyPrice(7,1,2,3,4,5);
	break;
	
	case KAND:
	// fill grid with locations 1 thru 6
	scr_FillSupplyPrice(1,2,3,4,5,6);
	break;

}