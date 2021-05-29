/// @description  Jump Script
function EnemyJump(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {

	// USEAGE: EnemyJump(ip,ts1,ts2,tc,spdH1,vsp1,vsp2)

	ip = argument0 // ip = jump start
	ts1 = argument1 // ts1 = time going up without obstacles
	ts2 = argument2 // ts2 = time going up with obstacles
	tc = argument3 // tc = falling time
	spdH1 = argument4 // spdH1 = horizontal distance
	vsp1 = argument5 // vsp1 = vertical speed without obstacles
	vsp2 = argument6 // vsp2 = vertical speed with obstacles

	// Here the jump starts
	tp = ts1; // ts = time going up
	vsp = vsp1; // Speed ​​Up
	spdH = spdH1; // spdH = horizontal distance
	/// Movimento Horizontal
	if timer >= tp {if direccion="left"{x=x-(spdH*1);}else if direccion="right"{x=x+(spdH*1);}}
	// Vertical Movement
	if timer == ip {vspeed = vsp} // Here it starts to rise
	if timer == tp {vspeed = abs(vsp);} // Here it starts to fall
	// End of the jump
	if timer = tc {state = 0; timer = 0;} // Here ends the jump by ending the steps
	// Canceling the jump by touching the floor
	if timer > tp { 
	    if not place_free(x,y+2) 
	    && place_meeting(x,y+2,objPrtSolid)
	        {state="idle"; timer=0;}
	}


}
