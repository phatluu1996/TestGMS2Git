function scr_player_input() {
	key_up = keyboard_check(ord("W"));
	key_down = keyboard_check(ord("S"));
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(ord("K"));
	key_jump_hold = keyboard_check(ord("K"));
	key_dash = keyboard_check_pressed(ord("L"));
	key_dash_hold = keyboard_check(ord("L"));
	key_shoot_press = keyboard_check_pressed(ord("J"));
	key_shoot_release = keyboard_check_released(ord("J"));
	key_shoot_hold = keyboard_check(ord("J"));
	key_giga_attack = keyboard_check_pressed(ord("M"));
	key_skill = keyboard_check_pressed(ord("U"));
	key_next_weapon = keyboard_check_pressed(ord("O"));
	key_prev_weapon = keyboard_check_pressed(ord("I"));


}
