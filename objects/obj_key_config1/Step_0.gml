if instance_exists(FadeIn) or instance_exists(FadeOut)
{
exit;
}

if(!toggle){
    if(keyboard_check_pressed(global.player1_key_down) || keyboard_check_pressed(global.player1_key_up)){
        c_sel += keyboard_check_pressed(global.player1_key_down) - keyboard_check_pressed(global.player1_key_up);   
        sound_play(opt_select);  
    } 
    
    if(c_sel > 12){
        c_sel = 1;
    }
    
    if(c_sel < 1){
        c_sel = 12; 
    }  
}

if keyboard_check_pressed(global.player1_key_start)
{
    toggle = true;      
    exit;   
}

scr_keys_update("CONTROL1");


