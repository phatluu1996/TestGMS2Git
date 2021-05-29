function scr_player_catch_ladder() {
	var ladder ;
	ladder = instance_place(x, y, objLadder);
	if(ladder >= 0 && (key_up || (key_down && !place_meeting(x, y + 1, objPrtSolid)))){
	    if(x > ladder.x - 6 && x < ladder.x + 6){
	        x = ladder.x;
	        state = "climb";
	        vsp = 0;
	        hsp = 0;
	        stepTimer = 0;
	    }
	}


}
