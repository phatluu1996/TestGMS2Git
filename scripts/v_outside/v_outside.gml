function v_outside() {
	// Returns if the object is vertically off-screen

	if y < __view_get( e__VW.YView, 0 ) - sprite_height
	    or y > __view_get( e__VW.YView, 0 ) + sprite_height 
	{
	    vOutside = true;
	}
	else
	{
	    vOutside = false;
	}

	return vOutside;


}
