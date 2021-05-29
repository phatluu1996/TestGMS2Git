key_start_p1 = keyboard_check_released(global.player1_key_start);
key_start_p2 = keyboard_check_released(global.player2_key_start);


if (key_start_p1 or key_start_p2) {instance_destroy();}

