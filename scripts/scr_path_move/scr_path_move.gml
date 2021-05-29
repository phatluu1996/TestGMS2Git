function scr_path_move() {
	if(global.pause){
	    image_speed = 0;
	    exit;
	}else{
	    image_speed = 1;
	}

	if(path != noone){  
	    timer-=1;
	    if(timer <= 0){
	        index+=1;
	        if(index >= path_get_number(path)){
	            index = 0;
	        }
	        //x = path_get_point_x(path, index);
	        //y = path_get_point_y(path, index);
	        cx = path_get_point_x(path, index);
	        cy = path_get_point_y(path, index);
	        nx = path_get_point_x(path, iif(index + 1>=path_get_number(path), 0, index + 1));
	        ny = path_get_point_y(path, iif(index + 1>=path_get_number(path), 0, index + 1));
        
	        dist = point_distance(x, y, nx, ny);
	        timer = ceil(abs(dist/spd));
	        dir = point_direction(cx, cy, nx, ny);
	        switch(dir){
	            case 0:
	                hsp = spd;
	                vsp = 0;
	                break;
                
	            case 90:
	                hsp = 0;
	                vsp = -spd;
	                break;    
                
	            case 180:
	                hsp = -spd;
	                vsp = 0;
	                break;
            
	            case 270:
	                hsp = 0;
	                vsp = spd;
	                break;
            
	            default:
	                hsp = lengthdir_x(spd, dir);
	                vsp = lengthdir_y(spd, dir);
	                break;
	        }
        
	    }
	    x+=hsp;
	    y+=vsp;
	}


}
