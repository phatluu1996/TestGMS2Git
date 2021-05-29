function EnemyInitVariables(argument0, argument1, argument2) {
	// EnemiesInitVariables(inActive,strength,hp)

	strength=argument1; // Strength of causes damage in player
	hp=argument2; // Health
	direccion="left"; // Starts in direction left
	moviment=0; // (SeaAttacker)
	image_speed=0; // Speed of sprite
	image_index=0; // Start in image frame 0
	inActive=argument0; // Starts inActive ?
	visible=argument0; // Starts Visible ?
	destroy=false; // Isn't destroyed
	canMove=argument0; // Starts Moving ?
	isRunning=false; // ball_de_voux
	steps=0; // Timer equals "timer"
	isFalling=false; // Spiky and others
	inmune=false; // Immunity
	inmune_timer=0; // Timer of Immunity
	isAtk=argument0; // Starts Attack ?
	timer=0; // Attack Timer
	state="idle"; // state always start in "idle"
	atk_end=false; // Attack is ending ?
	think=true; // Thinking
	think_t=0; // Thinking timer
	isDead=false; // Not is dead (for subbosses only)
	isDead_t=0; // Death timer (for subbosses only)
	xstart=x; // Starts X coordinates
	ystart=y; // Starts Y coordinates
	vspeed=0; // Speed vertical
	hspeed=0; // Speed horizontal
	grav=0.5; // Gravity
	elec=false; // Electric shock
	elec_t=0; // Timer of electric shock
	notRespawn=argument0;


}
