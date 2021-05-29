function scr_player_camera() {
	camera_x = __view_get( e__VW.XView, 0 );
	camera_y = __view_get( e__VW.YView, 0 );
	camera_w = __view_get( e__VW.WView, 0 );
	camera_h = __view_get( e__VW.HView, 0 );
	camera_center_x = camera_x + camera_w/2;
	camera_center_y = camera_y + camera_h/2;

	__view_set( e__VW.XView, 0, x - camera_w/2 );
	__view_set( e__VW.YView, 0, y - camera_h/2 );

	//Follow player
	if(target != noone){
	    if(target.state != "spawn"){ 
	        switch(mode){ 
	            case "follow_player":
	                x = target.x;
	                y = target.y;
	                x = clamp(x, sectionLeft+camera_w/2, sectionRight-camera_w/2);
	                y = clamp(y, sectionTop+camera_h/2, sectionBottom-camera_h/2);
                
	                with target{
	                    if(place_meeting(x,y,objRightArrow)){
	                        other.next_x = instance_place(x, y, objRightArrow).x + other.camera_w/2;
	                        other.prev_x = instance_place(x, y, objRightArrow).x - other.camera_w/2;    
	                        other.mode = "horizonal_transition_unlocked";
	                        other.hsp = 8;
	                    }else if(place_meeting(x,y,objLeftArrow)){
	                        other.next_x = instance_place(x, y, objLeftArrow).x - other.camera_w/2;
	                        other.prev_x = instance_place(x, y, objLeftArrow).x + other.camera_w/2;    
	                        other.mode = "horizonal_transition_unlocked";
	                        other.hsp = -8;
	                    }else if(place_meeting(x,y,objDownArrow)){
	                        other.next_y = instance_place(x, y, objDownArrow).y + other.camera_h/2;
	                        other.prev_y = instance_place(x, y, objDownArrow).y - other.camera_h/2;    
	                        other.mode = "vertical_transition_unlocked";
	                        other.vsp = 8;
	                    }else if(place_meeting(x,y,objUpArrow)){
	                        other.next_y = instance_place(x, y, objUpArrow).y - other.camera_h/2;
	                        other.prev_y = instance_place(x, y, objUpArrow).y + other.camera_h/2;    
	                        other.mode = "vertical_transition_unlocked";
	                        other.vsp = -8;
	                    }
	                }
	                break;
            
	            case "horizonal_transition_unlocked":
	                with target{
	                    if(place_meeting(x,y,objRightArrow) || place_meeting(x,y,objLeftArrow)){
	                        other.x+=other.hsp;
	                        if(other.hsp > 0){
	                            other.x=clamp(other.x, other.prev_x,(other.prev_x + other.next_x)/2);
	                        }else{
	                            other.x=clamp(other.x, (other.prev_x + other.next_x)/2, other.prev_x);
	                        }
	                    }else{
	                        other.mode = "horizonal_transition";
	                    }
	                }
	                break;
                
	            case "vertical_transition_unlocked":
	                with target{
	                    if(place_meeting(x,y,objUpArrow) || place_meeting(x,y,objDownArrow)){
	                        other.y+=other.vsp;
	                        if(other.vsp > 0){
	                            other.y=clamp(other.y, other.prev_y,(other.prev_y + other.next_y)/2);
	                        }else{
	                            other.y=clamp(other.y, (other.prev_y + other.next_y)/2, other.prev_y);
	                        }
	                    }else{
	                        other.mode = "vertical_transition";
	                    }
	                }
	                break;
                
	            case "horizonal_transition":
	                with target{
	                    if(place_meeting(x,y,objRightArrow)){
	                        other.next_x = instance_place(x, y, objRightArrow).x + other.camera_w/2;
	                        other.prev_x = instance_place(x, y, objRightArrow).x - other.camera_w/2;    
	                        other.mode = "horizonal_transition_unlocked";
	                        other.hsp = 8;
	                    }else if(place_meeting(x,y,objLeftArrow)){
	                        other.next_x = instance_place(x, y, objLeftArrow).x - other.camera_w/2;
	                        other.prev_x = instance_place(x, y, objLeftArrow).x + other.camera_w/2;    
	                        other.mode = "horizonal_transition_unlocked";
	                        other.hsp = -8;
	                    }
	                }
	                if(hsp > 0){
	                    if(target.x > (prev_x + next_x)/2){ //this mean the player has moved to the next section
	                        x+=hsp;
	                        x=clamp(x, prev_x, next_x);  
	                        if(round(x) == round(next_x)){
	                            scr_player_camera_init();
	                            mode = "follow_player";
	                        }                   
	                    }else{//this mean the player has moved back to the previous section
	                        x-=hsp; 
	                        x=clamp(x, prev_x,(prev_x + next_x)/2); 
	                        if(round(x) == round(prev_x)){                            
	                            mode = "follow_player";
	                        }       
	                    }
	                }else{
	                    if(target.x < (prev_x + next_x)/2){//this mean the player has moved to the next section
	                        x+=hsp;
	                        x=clamp(x, next_x, prev_x); 
	                        if(round(x) == round(next_x)){
	                            scr_player_camera_init();
	                            mode = "follow_player";
	                        }
	                    }else{//this mean the player has moved back to the previous section
	                        x-=hsp; 
	                        x=clamp(x, (prev_x + next_x)/2, prev_x);
	                        if(round(x) == round(prev_x)){
	                            mode = "follow_player";
	                        }
	                    }
	                }
	                break;
             
	            case "vertical_transition":
	                //Player go back to previous section when the camera is almost finish the transition
	                with target{
	                    if(place_meeting(x,y,objDownArrow)){
	                        other.next_y = instance_place(x, y, objDownArrow).y + other.camera_h/2;
	                        other.prev_y = instance_place(x, y, objDownArrow).y - other.camera_h/2;    
	                        other.mode = "vertical_transition_unlocked";
	                        other.vsp = 8;
	                    }else if(place_meeting(x,y,objUpArrow)){
	                        other.next_y = instance_place(x, y, objUpArrow).y - other.camera_h/2;
	                        other.prev_y = instance_place(x, y, objUpArrow).y + other.camera_h/2;    
	                        other.mode = "vertical_transition_unlocked";
	                        other.vsp = -8;
	                    }
	                }
                
	                if(vsp > 0){
	                    if(target.y > (prev_y + next_y)/2){ //this mean the player has moved to the next section
	                        y+=vsp;
	                        y=clamp(y, prev_y, next_y);  
	                        if(round(y) == round(next_y)){
	                            scr_player_camera_init();
	                            mode = "follow_player";
	                        }                   
	                    }else{//this mean the player has moved back to the previous section
	                        y-=vsp; 
	                        y=clamp(y, prev_y, next_y); 
	                        if(round(y) == round(prev_y)){                            
	                            mode = "follow_player";
	                        }       
	                    }
	                }else{
	                    if(target.y < (prev_y + next_y)/2){//this mean the player has moved to the next section
	                        y+=vsp;
	                        y=clamp(y, next_y, prev_y); 
	                        if(round(y) == round(next_y)){
	                            scr_player_camera_init();
	                            mode = "follow_player";
	                        }
	                    }else{//this mean the player has moved back to the previous section
	                        y-=vsp; 
	                        y=clamp(y, next_y, prev_y);
	                        if(round(y) == round(prev_y)){
	                            mode = "follow_player";
	                        }
	                    }
	                }
	                break;   
            
	        }
	    }
	}



}
