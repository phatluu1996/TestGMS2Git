function scr_platform_collision() {
	//Note the y of all moving paltform should be zero
	if(global.pause){
	    image_speed = 0;
	    exit;
	}else{
	    image_speed = 1;
	}

	if(instance_number(objPrtPlayer) > 0){
	    var vspd;
	    vspd = 1;
	    if(vsp != 0){
	        vspd = abs(vsp) + 1;
	    }
	    collisionTop = collision_rectangle(bbox_left, bbox_top - abs(vspd), bbox_right, bbox_top, objPrtPlayer, false, true);
	    collisionBottom = collision_rectangle(bbox_left, bbox_bottom + abs(vspd), bbox_right, bbox_bottom, objPrtPlayer, false, true);
	    collisionLeft = collision_rectangle(bbox_left - abs(hsp), bbox_top, bbox_left, bbox_bottom, objPrtPlayer, false, true);
	    collisionRight = collision_rectangle(bbox_right + abs(hsp), bbox_top, bbox_right, bbox_bottom, objPrtPlayer, false, true);
    
	    if(false && (collisionTop>=0 || collisionBottom>=0 || collisionLeft>=0 || collisionRight>=0)){
	        global.pause = true;         
	        exit;
	    }
    
	    if(collisionTop >= 0)
	    {            
	        if(place_meeting(x, y - vspd, objPrtPlayer))
	        {
	            var player;
	            player = instance_place(x, y - vspd, objPrtPlayer);
	            player.hsp_carry = hsp;
	            player.y = y;
	        }    
	    }else if(collisionBottom >= 0){
	        if(place_meeting(x, y + vspd, objPrtPlayer))
	        {
	            var player;
	            player = instance_place(x, y + vspd, objPrtPlayer);
	            player.vsp_carry = vspd;
	        }        
	    }
	} 


}
