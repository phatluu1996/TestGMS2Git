function scr_player_step_event() {
	if(keyboard_check_pressed(vk_space)){
	    global.pause = !global.pause;    
	}

	if(global.pause){
	    image_speed = 0;
	    exit;
	}else{
	    image_speed = 1;
	}
	scr_player_state_machine();
	scr_player_change_weapon();
	scr_variables_check();
	scr_player_general_collision();
	scr_player_ghost_effect();



}
