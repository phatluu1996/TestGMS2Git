function scr_player_air_abilities() {
	if(!isHyperSpd && !isAirDash && !isAirJump && !isHover && !isGigaAttack){        
	    if(key_dash){
	        if(key_up){
	            switch(character){
	                case ULTIMATE_X:
	                if(!place_meeting(x, y - jumpSpd, objPrtSolid)){
	                    state = "dash_up";
	                    isAirJump = true;
	                    vsp = 0;
	                    hsp = 0;
	                    image_index = 0;                    
	                }
	                break;
	            }
	        }else{
	            if(!place_meeting(x + image_xscale * dashSpd, y, objPrtSolid)){
	                mask_index = mask_low;
	                state = "dash";
	                isAirDash = true;
	                vsp = 0;
	            }
	        }
	    }else if(key_jump){
	        switch(character){
	            case ULTIMATE_X:
	                state = "hover";
	                vsp = 0;
	                isHover = true;                
	                break;
                
	            case ZERO:
	                if(!place_meeting(x, y - jumpSpd, objPrtSolid)){
	                    state = "jump";
	                    vsp = -jumpSpd;
	                    isAirJump = true;
	                }
	                break;
	        }
	    }
	}


}
