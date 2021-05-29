function EnemyStartAtack() {
	// Check if it is outside or inside the view.
	// Check if this is Active
	// Check the distance of the nearest player object
	// Defines when to start attacking

	if inActive==true and (outside_view) == false {
	    if distance_to_object(player) < __view_get( e__VW.WView, 0 ) { isAtk = true }
	}


}
