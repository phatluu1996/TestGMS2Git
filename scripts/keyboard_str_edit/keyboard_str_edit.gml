function keyboard_str_edit(argument0) {
	if(toggle){
	    var rd;
	    rd = choose(-1, 0, 1);
	    if(rd == 0){
	        return keyboard_check(argument0);
	    }else{
	        return "";  
	    }
	}else{
	    return keyboard_check(argument0);
	}


}
