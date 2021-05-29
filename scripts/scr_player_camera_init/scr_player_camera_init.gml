function scr_player_camera_init() {
	var dist;

	dist = 0;
	while(dist < 3200){
	    dist+=1;
	    if(place_meeting(x + dist, y, objSectionRight)){
	        break;
	    }
	    if(dist >= 3200){
	        show_debug_message("Cannot find right border");
	    }
	}
	sectionRight = instance_place(x + dist, y, objSectionRight).x;


	dist = 0;
	while(dist < 3200){
	    dist+=1;
	    if(place_meeting(x - dist, y, objSectionLeft)){
	        break;
	    }
	    if(dist >= 3200){
	        show_debug_message("Cannot find left border");
	    }
	}
	sectionLeft = instance_place(x - dist, y, objSectionLeft).x;


	dist = 0;
	while(dist < 3200){
	    dist+=1;
	    if(place_meeting(x , y - dist, objSectionTop)){        
	        break;
	    }
	    if(dist >= 3200){
	        show_debug_message("Cannot find top border");
	    }
	}
	sectionTop = instance_place(x , y - dist, objSectionTop).y;


	dist = 0;
	while(dist < 3200){
	    dist+=1;
	    if(place_meeting(x , y + dist, objSectionBottom)){        
	        break;
	    }
	    if(dist >= 3200){
	        show_debug_message("Cannot find bottom border");
	    }
	}
	sectionBottom = instance_place(x , y + dist, objSectionBottom).y;


}
