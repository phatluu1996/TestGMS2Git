function scr_player_change_weapon() {
	if(key_next_weapon - key_prev_weapon != 0){
	    global.weaponOrder += key_next_weapon - key_prev_weapon;
	    if(global.weaponOrder < 0){
	        global.weaponOrder = global.weaponAmount - 1;
	    }
	    if(global.weaponOrder > global.weaponAmount - 1){
	        global.weaponOrder = 0;
	    }
	}


}
