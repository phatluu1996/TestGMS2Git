if instance_exists(FadeIn) or instance_exists(FadeOut)
{
exit;
}

if(keyboard_check_pressed(global.player1_key_down) or keyboard_check_pressed(global.player2_key_down))
{
    sound_play(opt_select); 
    c_sel+=1;
}
    
if(keyboard_check_pressed(global.player1_key_up) or keyboard_check_pressed(global.player2_key_up)) 
{
    sound_play(opt_select);
    c_sel-=1;
}

if(keyboard_check_pressed(global.player1_key_start) or keyboard_check_pressed(global.player2_key_start))
{
    switch(c_sel)
    {
    case 1: {scrNextMenu(config_control1);};break;
    case 2: {scrNextMenu(config_control2);};break;
    case 3: {scrNextMenu(main_menu);};break;
    }
}

