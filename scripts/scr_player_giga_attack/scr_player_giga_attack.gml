function scr_player_giga_attack() {
	scr_player_input();
	if(isGigaAttack){
	    switch(character){
	        case ULTIMATE_X:
	            if(image_index + image_speed >= 17){
	                dashTimer+=1;
	                if(scr_anim_end()){
	                    image_index = 17;
	                }
	                hsp = image_xscale * (dashSpd + 2);
	                vsp = 0;
	                if(dashTimer >= 20){
	                    state = "fall";
	                    isGigaAttack = false;                    
	                    dashTimer = 0;
	                    hsp = 0;
	                    hspp = 0; 
	                }
	            }else{
	                hsp = runSpd / 4 * image_xscale;
	                vsp = -1;
	            }               
            
	            sprite_index = sprGigaAttack;            
	            break;
	    }       
	}




}
