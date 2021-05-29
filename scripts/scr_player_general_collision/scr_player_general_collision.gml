function scr_player_general_collision() {
	//Check collision then Update coordinates

	//Calculate speed by moving platform horizonal speed and player horizonal speed
	var hsp_final;
	hsp_final = hsp + hsp_carry;
	hsp_carry = 0;

	if(place_meeting(x + hsp_final, y, objPrtSolid))
	{
	    while(!place_meeting(x + hsp_final, y, objPrtSolid)){ x += sign(hsp_final)}; 
	    hsp_final = 0;
	    hsp = 0;    
	}
	x+=hsp_final;


	//Calculate speed by moving platform vertical speed and player vertical speed
	var vsp_final;
	vsp_final = vsp + vsp_carry;
	vsp_carry = 0;

	if(place_meeting(x, y + vsp_final, objPrtSolid))
	{
	    //y = ceil(y);
	    while(!place_meeting(x, y + sign(vsp_final), objPrtSolid)){ y += sign(vsp_final)};
	    vsp_final = 0;     
	    vsp = 0;
	}
	y+=vsp_final;




}
