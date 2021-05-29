function scr_player_attack(argument0, argument1, argument2, argument3) {
	//For player who shoot
	//For player who slash just input 0
	X = argument0;
	Y = argument1;
	attackSprite = argument2;
	nonAttackSprite = argument3;     

	switch(character){
	    case ULTIMATE_X:   
	        if((sprite_index == sprLanding || sprite_index == sprLandingAttack) && !scr_anim_end()){                          
	            scr_player_shoot(x + image_xscale * 16, y - 23, sprLandingAttack, sprLanding);
	        }else{
	            scr_player_shoot(X, Y, attackSprite, nonAttackSprite);
	        }
                
	        break;
        
	    case ZERO:
	        switch(state){
	            case "run":
	            case "step":
	            case "dash":
	                if(key_shoot_press && !isSlash){
	                    hsp = 0;
	                    isSlash = true;
	                    image_index = 0;
	                    state = "idle";
	                }else{
	                    sprite_index = nonAttackSprite;
	                }
	                break;
                            
	            case "idle":              
	            case "fall":    
	            case "wall_cling":
	            case "wall_jump":
	            case "climb":
	            case "jump":
	                if(key_shoot_press && !isSlash){
	                    isSlash = true;
	                    image_index = 0;
	                    if(key_up && (state == "jump" || state == "fall" || state == "wall_jump")){
	                        isRoll = true;  
	                    }
	                }
                
	                var maxCombo;
	                maxCombo = 3;
	                if(isSlash){
	                   if(state == "idle" && sprite_index != sprLandingAttack){
	                       sprite_index = sprIdleAttack[slashIndex];
	                       var canNextSlash;
	                       canNextSlash = false;
	                       switch(slashIndex){
	                            case 0:
	                                canNextSlash = image_index + image_speed >= 10;
	                                break;
                                
	                            case 1:
	                                canNextSlash = image_index + image_speed >= 8;
	                                break;
	                       }
                   
	                       if(key_shoot_press && canNextSlash && slashIndex < maxCombo - 1){
	                           slashIndex = clamp(slashIndex+1, 0, maxCombo - 1); 
	                           image_index = 0;
	                       }
                       
	                       if(scr_anim_end()){
	                            isSlash = false;
	                            slashIndex = 0;                            
	                       }                                            
	                   }else{
	                       sprite_index = iif(isRoll, sprRollAttack, attackSprite);  
	                       if(key_shoot_press && image_index + image_speed >= image_number*3/4){
	                            image_index = 0;                       
	                       } 
	                       if(scr_anim_end()){
	                            if(state == "wall_cling"){
	                                sprite_index = sprWallCling;
	                                image_index = sprite_get_number(sprWallCling) - 1;
	                            }
	                            isSlash = false;   
	                            isRoll = false;                        
	                       }                                
	                   }
	                }else{
	                   sprite_index = nonAttackSprite; 
	                }
	                break;
	        }           
               
	        break;
        
	    case NORMAL_X:
    
	        break;
	}


}
