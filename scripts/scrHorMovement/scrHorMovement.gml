function scrHorMovement(argument0, argument1) {
	// Move until you reach the final distance
	// Do the same way back when reaching the target position

	distance = argument0 // represents the maximum pixels to move
	velocity = argument1 // represents how many pixels to skip per step

	// Left
	if direccion="left"{
	if x > xstart-distance {x=x-velocity} 
	else 
	if x <= xstart-distance {direccion="right";}
	}
	else 
	// Right
	if direccion="right"{
	if x < xstart{x=x+velocity} 
	else 
	if x >= xstart {direccion="left";}
	}


}
