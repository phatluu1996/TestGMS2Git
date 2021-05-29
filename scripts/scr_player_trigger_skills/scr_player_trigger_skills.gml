function scr_player_trigger_skills() {
	switch(character){
	    case ULTIMATE_X:
	        break;
        
	    case ZERO:        
	        if((state == "step" || state == "run" || state == "idle") && key_skill && key_up && state != "perform_skills"){
	            state = "perform_skills";
	            skill = "vortex_slash";
	            image_index = 0;
	            dashTimer = 0;
	            vsp = -jumpSpd;
	        } 
	        break;
        
	}


}
