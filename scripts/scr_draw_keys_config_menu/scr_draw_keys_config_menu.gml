function scr_draw_keys_config_menu() {
	transition_kind=21
	transition_steps=20

	draw_sprite(spr_option_menu,0,160,8)

	draw_orange(x,y-24,"KEY CONFIG.")


	switch (c_sel)
	{
	    case 1:
	        draw_yellow(x,y,"UP")
	        break;
	    case 2:
	        draw_yellow(x,y+((c_sel-1)*8),"DOWN")
	        break;
	    case 3:
	        draw_yellow(x,y+((c_sel-1)*8),"LEFT")
	        break;
	    case 4:
	        draw_yellow(x,y+((c_sel-1)*8),"RIGHT")
	        break;
	    case 5:
	        draw_yellow(x,y+((c_sel-1)*8),"ATTACK")
	        break;
	    case 6:
	        draw_yellow(x,y+((c_sel-1)*8),"JUMP")
	        break;
	    case 7:
	        draw_yellow(x,y+((c_sel-1)*8),"DASH")
	        break;
	    case 8:
	        draw_yellow(x,y+((c_sel-1)*8),"S.ATTACK")
	        break;
	    case 9:
	        draw_yellow(x,y+((c_sel-1)*8),"G.ATACK")
	        break;
	    case 10:
	        draw_yellow(x,y+((c_sel-1)*8),"PREV WEAPON")
	        break;
	    case 11:
	        draw_yellow(x,y+((c_sel-1)*8),"NEXT WEAPON")
	        break;
	    case 12:
	        draw_yellow(x,y + (c_sel*8),"RETURN")
	        break;
	}  

             
	scr_draw_keys_value(x+100,y+((1-1)*8),keyboard_str((temp_key_up)), 1)
	scr_draw_keys_value(x+100,y+((2-1)*8),keyboard_str((temp_key_down)),2)
	scr_draw_keys_value(x+100,y+((3-1)*8),keyboard_str((temp_key_left)),3)
	scr_draw_keys_value(x+100,y+((4-1)*8),keyboard_str((temp_key_right)),4)
	scr_draw_keys_value(x+100,y+((5-1)*8),keyboard_str((temp_key_shoot)),5)
	scr_draw_keys_value(x+100,y+((6-1)*8),keyboard_str((temp_key_jump)),6)
	scr_draw_keys_value(x+100,y+((7-1)*8),keyboard_str((temp_key_dash)),7)
	scr_draw_keys_value(x+100,y+((8-1)*8),keyboard_str((temp_key_especial)),8)
	scr_draw_keys_value(x+100,y+((9-1)*8),keyboard_str((temp_key_giga)),9)
	scr_draw_keys_value(x+100,y+((10-1)*8),keyboard_str((temp_key_previous)),10)
	scr_draw_keys_value(x+100,y+((11-1)*8),keyboard_str((temp_key_next)),11)







}
