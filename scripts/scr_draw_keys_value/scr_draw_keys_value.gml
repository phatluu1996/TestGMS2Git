function scr_draw_keys_value(argument0, argument1, argument2, argument3) {

	if(!toggle){
	    draw_font(argument0,argument1,argument2);
	}else{
	    if(c_sel == argument3){        
	        if(irandom(1) == 0){
	            draw_font(argument0,argument1,argument2);   
	        }
	    }else{
	        draw_font(argument0,argument1,argument2);
	    }
	}


}
