function scr_keys_update(argument0) {
	if(toggle){    
	    if((keyboard_lastkey == global.player1_key_start || keyboard_lastkey == global.player2_key_start) && c_sel != 12) exit;
	    switch (c_sel)
	    {        
	        case 1: // UP ==========================================            
            
            
	            temp_key_up=keyboard_lastkey;
	            toggle = false;
	            break;
        
	        case 2:  // DOWN ==========================================
            
	            temp_key_down=keyboard_lastkey;            
	            toggle = false;
	            break;
        
	        case 3:  // LEFT ==========================================
            
	            temp_key_left=keyboard_lastkey;
	            toggle = false;
	            break;
        
        
	        case 4: // RIGHT ==========================================
            
	            temp_key_right=keyboard_lastkey;
	            toggle = false;
	            break;
        
	        case 5: // SHOOT ==========================================
            
	            temp_key_shoot=keyboard_lastkey;
	            toggle = false;
	            break;
        
	        case 6: // JUMP ==========================================
            
	            temp_key_jump=keyboard_lastkey;
	            toggle = false;
	            break;
        
	        case 7: // DASH ==========================================
            
	            temp_key_dash=keyboard_lastkey;
	            toggle = false;
	            break;
          
	        case 8: // ESPECIAL ==========================================
            
	            temp_key_especial=keyboard_lastkey;
	            toggle = false;
	            break;
          
	        case 9: // GIGA ATACK ========================================
            
	            temp_key_giga=keyboard_lastkey;
	            toggle = false;
	            break;
          
	        case 10: // PREVIOUS WEAPON ==========================================
            
	            temp_key_previous=keyboard_lastkey;
	            toggle = false;
	            break;
          
	        case 11: // NEXT WEAPON ==========================================
            
	            temp_key_next=keyboard_lastkey;
	            toggle = false;
	            break;
        
	        case 12: // RETURN
	            ini_open("keyconfig.ini")
	            ini_write_real(argument0,"LEFT",temp_key_left)
	            ini_write_real(argument0,"RIGHT",temp_key_right)
	            ini_write_real(argument0,"DOWN",temp_key_down)
	            ini_write_real(argument0,"UP",temp_key_up)
	            ini_write_real(argument0,"JUMP",temp_key_jump)
	            ini_write_real(argument0,"DASH",temp_key_dash)
	            ini_write_real(argument0,"SHOOT",temp_key_shoot)
	            ini_write_real(argument0,"ESPECIAL",temp_key_especial)
	            ini_write_real(argument0,"GIGA",temp_key_giga)
	            ini_write_real(argument0,"PREVIOUS",temp_key_previous)
	            ini_write_real(argument0,"NEXT",temp_key_next)
	            init_KeysLoad();
	            ini_close();
	            scrNextMenu(option_menu);     
	            break;  
	    }
	}



}
