function scr_player_ghost_effect() {
	if(state == "dash" || isHyperSpd){
	    fadeTimer+=1;
	    if(fadeTimer >= 5){
	        fadeTimer = 0;
	        var ghost;
	        ghost = instance_create(x, y, objPlayerGhost);
	        ghost.image_xscale = image_xscale;
	        ghost.sprite_index = sprite_index;
	        ghost.image_index = image_index;
	        ghost.image_speed = 0;
	        ghost.image_alpha = 0;
	        ghost.alarm[0] = 5;
	        switch(character){
	            case ULTIMATE_X:
	                ghost.color = make_color_rgb(99,24,165);
	                break;
                
	            case ZERO:
	                ghost.color = make_color_rgb(224,32,0);
	                break;
	        }
	    }
	}


}
