/// @description BUILD HEX TILES
// Invoked by: Create Event


var tileCount = 0;

repeat (cmax) // repeat for however many columns...
{
	repeat (rmax) // and for however many rows...
	{
		//before we can create an instance, we need to know what x,y to place it at
		var xpos = (c * 32) + myXpos; // at cell 0,0 this is top left, at 1,0 this is 32, etc...
		var ypos = (r * 22) + myYpos; // at cell 0,0 this is top left, at 0,1 this is 30px down, etc...
		if(r % 2 == 0) // Is this row even?
		{
			scr_CreateTile(tileCount, xpos, ypos);
			tileCount += 1;
		}

		if(r % 2 != 0) // Is this row odd?
		{
			xpos += 18;
			scr_CreateTile(tileCount, xpos, ypos);
			tileCount += 1;
		}
				
		r += 1; // this column is done, iterate.
	}

	r = 0; // next row, set the column back to 0.
	c += 1; // this row is done, iterate.
}

global.hexCount = instance_number(obj_hexTester);

ds_grid_destroy(myMap);