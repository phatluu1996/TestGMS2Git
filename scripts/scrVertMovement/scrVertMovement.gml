function scrVertMovement(argument0, argument1) {
	// Move until you reach the final distance
	// Do the same way back when reaching the target position

	distance = argument0 // represents the maximum pixels to move
	velocity = argument1 // represents how many pixels to skip per step

	// Down
	if direccion="down"{
	if y < ystart-distance {y=y+velocity}
	else
	if y >= ystart-distance {direccion="up"; timer=0;}
	}
	else 
	// Up
	if direccion="up"{
	if y > ystart{y=y-velocity} 
	else 
	if y <= ystart {direccion="down"; timer=0;}
	}


}
