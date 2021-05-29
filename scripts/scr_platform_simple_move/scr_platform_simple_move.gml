function scr_platform_simple_move() {
	if(global.pause){
	    image_speed = 0;
	    exit;
	}else{
	    image_speed = 1;
	}

	timer+=1;
	if(timer >= time){
	    timer = 0;
	    hsp = -hsp;
	    vsp = -vsp;
	}

	x += hsp;
	y += vsp;


}
