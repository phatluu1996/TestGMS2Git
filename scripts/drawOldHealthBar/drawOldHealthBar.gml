function drawOldHealthBar(argument0, argument1, argument2, argument3) {
	//Argument0: maximum health
	//Argument1: current health
	//Argument2: which sprite to draw at end
	//Argument3: health bar position

	/* 
	Notes: 
	In mode coop (global.game_mode=2) if player1 is dead, 
	the lifeBar of player2 move to pos 1 and weaponBar of player2 move to pos 4

	In mode versus (global.game_mode=3) 
	the life bar of player2 move to pos 3.

	*/

	position = argument3;
	sh = 14; // Sprite Height
	hs = 2; // Horizontal Separation

	switch(position) 
	{
	    case 1: tx = __view_get( e__VW.XView, 0 )+9; ty = __view_get( e__VW.YView, 0 )+80; break; // Player 1 Life Bar Position
	    case 2: tx = __view_get( e__VW.XView, 0 )+9; ty = __view_get( e__VW.YView, 0 )+160; break; // Player 2 Life Bar Position
	    case 3: tx = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-(9+sh); ty = __view_get( e__VW.YView, 0 )+80; break; // Boss Life Bar Position
	    case 4: tx = __view_get( e__VW.XView, 0 )+(9+sh+hs); ty = __view_get( e__VW.YView, 0 )+80; break; // Player 1 Weapon Bar Position
	    case 5: tx = __view_get( e__VW.XView, 0 )+(9+sh+hs); ty = __view_get( e__VW.YView, 0 )+160; break; // Player 2 Life Bar Position
    
	}
	for (i = 0; i <= (argument0/2); i+=1) // Down
	{
	 if ((argument1/2)<i) draw_sprite(LB_emp,-1,tx,ty-i*2) // Draw the lost life bar.
	 if ((argument1/2)>=i) draw_sprite(LB_ene,-1,tx,ty-i*2) // Draws the life bar intact.
	}
	draw_sprite(LB_top,-1,tx,ty-4-(argument0)) // Draws the life bar top.
	draw_sprite(argument2,-1,tx,ty) // Draw the life bar simbol (X,Z,A,Sigma,Weapon)



}
