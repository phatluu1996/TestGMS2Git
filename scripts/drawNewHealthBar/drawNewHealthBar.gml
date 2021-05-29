function drawNewHealthBar(argument0, argument1, argument2) {
	//Argument0: maximum health
	//Argument1: current health
	//Argument2: which sprite to draw at end (player's logo)

	tx = __view_get( e__VW.XView, 0 )+20;
	ty = __view_get( e__VW.YView, 0 )+8;

	for (i = 1; i <= (argument0+1); i+=1) //Down
	{
	  if i<(argument0+1)-2
	  { 
	    if ((argument1)<i)
	      draw_sprite(LB_emp_new,-1,tx+i*2,ty);
	    if ((argument1)>=i) 
	      draw_sprite(LB_ene_new,-1,tx+i*2,ty);
	  }
	  if i=(argument0+1)-2
	  {
	    if ((argument1)<i)
	      draw_sprite(LB_emp_new_nl,-1,tx+i*2,ty);
	    if ((argument1)>=i)
	      draw_sprite(LB_ene_new_nl,-1,tx+i*2,ty);
	  }
	  if i=(argument0+1)-1
	  {
	    if ((argument1)<i)
	      draw_sprite(LB_emp_new_l,-1,tx+i*2,ty);
	    if ((argument1)>=i)
	      draw_sprite(LB_ene_new_l,-1,tx+i*2,ty);
	  }
	}
	    draw_sprite(LB_top_new,-1,tx+(argument0+1)*2,ty);
	    draw_sprite(LB_lv,-1,tx-11,ty-5)
	draw_sprite(argument2,-1,tx-sprite_get_width(argument2)+2,ty);


}
