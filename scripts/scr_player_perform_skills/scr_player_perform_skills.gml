function scr_player_perform_skills() {
	switch(skill){
	    case "vortex_slash":
	        dashTimer+=1;
	        scr_player_input();
	        sprite_index = sprSkillVortexSlash;
	        if(dashTimer >= 24){
	            dashTimer = 0;
	            state = "fall";
	            vsp = 0;
	        }        
	        break;
	}


}
