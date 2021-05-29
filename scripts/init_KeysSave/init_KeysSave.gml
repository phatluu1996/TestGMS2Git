function init_KeysSave() {
	ini_open("keyconfig.ini")
	{
	// PLAYER 1 CONTROL
	    ini_write_real("CONTROL1","LEFT",vk_left)
	    ini_write_real("CONTROL1","RIGHT",vk_right)
	    ini_write_real("CONTROL1","DOWN",vk_down)
	    ini_write_real("CONTROL1","UP",vk_up)
	    ini_write_real("CONTROL1","JUMP",ord("X"))
	    ini_write_real("CONTROL1","DASH",ord("Z"))
	    ini_write_real("CONTROL1","SHOOT",ord("C"))
	    ini_write_real("CONTROL1","ESPECIAL",ord("V"))
	    ini_write_real("CONTROL1","GIGA",ord("F"))
	    ini_write_real("CONTROL1","PREVIOUS",ord("A"))
	    ini_write_real("CONTROL1","NEXT",ord("S"))
                                                  
	// PLAYER 2 CONTROL
	    ini_write_real("CONTROL2","LEFT",ord("I"))
	    ini_write_real("CONTROL2","RIGHT",ord("P"))
	    ini_write_real("CONTROL2","DOWN",ord("L"))
	    ini_write_real("CONTROL2","UP",ord("O"))
	    ini_write_real("CONTROL2","JUMP",ord("B"))
	    ini_write_real("CONTROL2","DASH",ord("T"))
	    ini_write_real("CONTROL2","SHOOT",ord("M"))
	    ini_write_real("CONTROL2","ESPECIAL",ord("U"))
	    ini_write_real("CONTROL2","GIGA",ord("H"))
	    ini_write_real("CONTROL2","PREVIOUS",ord("G"))
	    ini_write_real("CONTROL2","NEXT",ord("J"))
	}
	ini_close();


}
