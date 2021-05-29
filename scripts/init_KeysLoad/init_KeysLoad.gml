function init_KeysLoad() {
	ini_open("keyconfig.ini")
	{
	// PLAYER 1 CONTROL
	global.player1_key_left=ini_read_real("CONTROL1","LEFT",vk_left)
	global.player1_key_right=ini_read_real("CONTROL1","RIGHT", vk_right)
	global.player1_key_down=ini_read_real("CONTROL1","DOWN", vk_down)
	global.player1_key_up=ini_read_real("CONTROL1","UP", vk_up)
	global.player1_key_jump=ini_read_real("CONTROL1","JUMP",ord("X")) // X for Jump
	global.player1_key_dash=ini_read_real("CONTROL1","DASH",ord("Z")) // Z for dash
	global.player1_key_shoot=ini_read_real("CONTROL1","SHOOT",ord("C"))// C for buster
	global.player1_key_especial=ini_read_real("CONTROL1","ESPECIAL",ord("V"))// V for especial
	global.player1_key_giga=ini_read_real("CONTROL1","GIGAATACK",ord("F"))// F for giga attack
	global.player1_key_previous=ini_read_real("CONTROL1","PREVIOUS",ord("A"))// A for previous weapon
	global.player1_key_next=ini_read_real("CONTROL1","NEXT",ord("S"))// S for next weapon
	global.player1_key_start=ini_read_real("CONTROL1","START",vk_enter)

	// PLAYER 2 CONTROL
	global.player2_key_left=ini_read_real("CONTROL2","LEFT",ord("I"))
	global.player2_key_right=ini_read_real("CONTROL2","RIGHT", ord("P"))
	global.player2_key_down=ini_read_real("CONTROL2","DOWN", ord("L"))
	global.player2_key_up=ini_read_real("CONTROL2","UP", ord("O"))
	global.player2_key_jump=ini_read_real("CONTROL2","JUMP",ord("B")) // B for Jump
	global.player2_key_dash=ini_read_real("CONTROL2","DASH",ord("T")) // T for dash
	global.player2_key_shoot=ini_read_real("CONTROL2","SHOOT",ord("M"))// M for buster
	global.player2_key_especial=ini_read_real("CONTROL2","ESPECIAL",ord("U"))// U for especial
	global.player2_key_giga=ini_read_real("CONTROL2","GIGAATACK",ord("H"))// H for giga attack
	global.player2_key_previous=ini_read_real("CONTROL2","PREVIOUS",ord("G"))// G for previous weapon
	global.player2_key_next=ini_read_real("CONTROL2","NEXT",ord("J"))// J for next weapon
	global.player2_key_start=ini_read_real("CONTROL2","START",vk_space)

	}
	ini_close()


}
