function BossPerformDeath(argument0, argument1, argument2, argument3, argument4) {
	if isDead == true { destroy_t+=1; inActive=false; image_speed=0;

	if destroy_t < 100 {isDead_t+=.5;}
	if destroy_t > 100 {isDead_t+=1;}
	if destroy_t = 250 {instance_destroy();}

	// Creates randomized explosions
	if isDead_t == 1{ 

	nx = argument0; // position of the last pixel drawn to your right on the sprite
	px = argument1; // position of the last pixel drawn to your left on the sprite
	ny = argument2; // position of the last pixel drawn to down of you on the sprite
	py = argument3; // position of the last pixel drawn to down of you on the sprite
	xx = abs(nx-x); // x coordinate distance to the last pixel drawn on the right
	yy = abs(ny-y); // y coordinate distance to the last pixel drawn below you.
	object = argument4; // Object Explosion Color

	instance_create(x+xx-(irandom(nx-px)),y+yy-(irandom(ny-py)),object); }

	if isDead_t >= 5 { isDead_t = 0; }

	}

	if isDead = false {isDead_t=0; destroy_t=0;}


}
