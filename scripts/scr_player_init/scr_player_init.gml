function scr_player_init(argument0) {
	//Character define
	//The character code is in User defined constant
	character = argument0;

	//FPS
	room_speed = 60;

	//Initial variable
	global.pause = false;
	chargeLevel = 0;

	global.maxHealth = 16 + (2*(global.hearts));
	global.player1_health=global.maxHealth;
	// Variable for freezing all players when entering the Boss room,
	// Or when you win a battle against a boss,
	// Or against the opposing player in versus mode.
	global.FreezingPlayers = false; 
	// Variable for freezing individual players 
	// (freezing by contact with enemy weapons, or with the enemies themselves)
	Freeze=false





	//Physics
	stepSpd = 0.4;
	runSpd = 1.4;
	jumpSpd = 5.25;
	dashSpd = 3.75;
	climbSpd = 1.4;
	wallClingSpd = 0.8;
	grav = 0.25;


	//Speed
	hsp = 0;    //Horizonal speed
	vsp = 0;    //Vertical speed
	hsp_carry = 0; //Horizonal speed move by platform
	vsp_carry = 0; //Vertical speed move by platform

	//State
	state = "idle";
	skill = ""; //Zero skills

	//Timer
	stepTimer = 0;
	dashTimer = 0;
	shootTimer = 0;
	climbTimer = 0;
	damageTimer = 0;
	spawnTimer = 0;
	wallKickTimer = 0;
	chargeTimer = 0;
	fadeTimer = 0; //The time that the trail effect last
	hoverTimer = 0;
	dashUpTimer = 0;
	wallSlideTimer = 0;

	//Index
	slashIndex = 0;
	global.weaponOrder = 0;
	global.weaponAmount = 3;

	//Toogle variables
	isShoot = false;
	isSlash = false;
	isRoll = false;
	isHyperSpd = false;
	isAirDash = false;
	isAirJump = false;
	isHover = false;
	isGigaAttack = false;

	//Camera
	camera = instance_create(xstart, ystart, objCamera);
	camera.target = id;

	//Sprite mapping
	if(state == "spawn"){
	    y = ystart - 8 * 44;
	}

	//Arraylist
	buster = ds_list_create();
	damage = ds_list_create();   
	originalColor = ds_list_create();
	replaceColor = ds_list_create();
	//Mapping player sprites base on character variable. Make sure the character is correct.
	src_player_constant_mapping();




}
