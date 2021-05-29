function scr_player_get_down_ladder() {
	var ladder;
	ladder = instance_position(x, bbox_bottom + 1, objTopLadder);
	if(ladder != noone && key_down && !isSlash){
	    if(x < ladder.x + 6  && x > ladder.x - 6){
	        state = "climb_down";        
	        x = ladder.x;
	        vsp = 0;
	        hsp = 0;
	        stepTimer = 0;
	        instance_deactivate_object(ladder);
	    }
	}


}
