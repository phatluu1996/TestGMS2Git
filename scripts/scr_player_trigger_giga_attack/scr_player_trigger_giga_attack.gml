function scr_player_trigger_giga_attack() {
	if(key_giga_attack){
	    switch(character){
	        case ULTIMATE_X:
	            if(!isHyperSpd && !isAirDash && !isAirJump && !isHover && !isGigaAttack && (state == "jump" || state == "fall" || state == "idle" || state == "step" || state == "run") && !isGigaAttack && !place_meeting(x + image_xscale * runSpd, y, objPrtSolid)){
	                state = "giga_attack";
	                vsp = 0;
	                isGigaAttack = true;
	                image_index = 0;
	                isAirDash = true;                                    
	            }                
	            break;                
	    } 
	}


}
