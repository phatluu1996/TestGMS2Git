function scr_variables_check() {
	switch(state){
	    case "idle":
	    case "run":
	    case "step":
	    case "climb":
	    case "climb_up":
	    case "climb_down":  
	        dashUpTimer = 0;      
	        isHyperSpd = false;
	    case "wall_kick":    
	    case "damaged":
	        wallSlideTimer = 0;
	    case "wall_cling":        
	        hoverTimer = 0;    
	        isAirDash = false;
	        isAirJump = false;
	        isHover = false;
	        isRoll = false;
        
	        break;
	}


}
