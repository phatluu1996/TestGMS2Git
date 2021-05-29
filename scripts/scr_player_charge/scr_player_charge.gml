function scr_player_charge() {
	if(key_shoot_hold){
	    chargeTimer+=1;
	    if(chargeTimer >= 20){
	        switch(chargeTimer){
	            case 25:
	                chargeLevel = 1;
	                break;
            
	           case 85:
	                chargeLevel = 2;
	                break;
                
	           case 155:
	                chargeLevel = 3;
	                break;                    
	        }
	    }
	}else{
	    switch(state){
	        case "damaged":
	        case "climb_down":    
	        case "climb_up":
	        case "dash_up":
	            chargeLevel = 0;
	            chargeTimer = 0;
	            break;
	    }
	}


}
