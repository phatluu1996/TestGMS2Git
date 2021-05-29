function h_outside() {
	// Returns if the object is horizontally off-screen

	if x < __view_get( e__VW.XView, 0 ) - sprite_width
	    or x > __view_get( e__VW.XView, 0 ) + sprite_width 
	{
	    hOutside = true;
	}
	else
	{
	    hOutside = false;
	}

	return hOutside;


}
