/// @description  Enemy Weapons Init Variables
function EnemyWeaponsInit() {

	inActive=true; // Necessary to cause damage to players
	visible=true; // Always get visible
	strength=2; // Damage strength
	destroy=false; // Variable to self-destruct when colliding with the player
	isFalling=false; // Variable for weapons that fall after a certain height
	depth=-7 // Weapons sprite depth

	// Do not delete, as some weapons advance towards the player
	EnemySearchPlayer(); // Check which player is closest if there is more than 1;


}
