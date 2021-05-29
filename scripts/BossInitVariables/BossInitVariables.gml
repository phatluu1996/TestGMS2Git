function BossInitVariables(argument0) {
	// / CREATE EVENT BOSSES

	hp=0; // health
	strength=argument0; // Strength of causes damage in player
	inActive=false; // Makes active after the player touches the boss room floor
	image_speed=0 // 
	isAtk=false; // Makes active after animation
	state="fillslife"; // Animation of fills life bar
	timer=0; // Time of each attack
	isDead=false; // Makes it true when hp decreases to 0 after animation
	isDead_t=0; // Timer of Explosions after death
	destroy_t=0; // Timer acceleration of explosions after death
	think=22; // Equal for all
	inmune=false; // Makes it true when it takes damage
	inmune_timer=0; // Immunity timer after take damage
	direccion="left" // Directions



	isDefense=false
	/* 
	    Var "isDefense" When this variable is true 
	    and the objBuster collide with the boss, 
	    if objBuster is LvL1, the objBuster ricochet to back.
	*/



}
