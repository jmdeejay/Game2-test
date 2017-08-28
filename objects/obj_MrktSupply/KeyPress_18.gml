/// @description VISIBLE ON

visible = true;

switch (myLocation)
{
	case VAIO:
	// fill grid with locations 2 thru 7
	scr_ColumnTitles(2,3,4,5,6,7);
	break;
	
	case DOMO:
	// fill grid with locations 3 thru 1 (3,4,5,6,7,1)
	scr_ColumnTitles(3,4,5,6,7,1);
	break;
	
	case CHIRS:
	// fill grid with locations 4 thru 2 (4, 5, 6, 7, 1, 2,)
	scr_ColumnTitles(4,5,6,7,1,2);
	break;
	
	case BARC:
	// fill grid with locations 5 thru 3
	scr_ColumnTitles(5,6,7,1,2,3);
	break;
	
	case ZAND:
	// fill grid with locations 6 thru 4
	scr_ColumnTitles(6,7,1,2,3,4);
	break;
	
	case SYRR:
	// fill grid with locations 7 thru 5
	scr_ColumnTitles(7,1,2,3,4,5);
	break;
	
	case KAND:
	// fill grid with locations 1 thru 6
	scr_ColumnTitles(1,2,3,4,5,6);
	break;

}