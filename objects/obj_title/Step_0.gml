/*
This object menu is invisible and inactive until the animation of the MMX logo ends.
This animation is done by the object "obj_title_anim".
This object menu becomes visible when we press the enter key, canceling the animation
or when "obj_title_anim" ends its animation (animation_end event).
*/

if instance_exists(FadeIn) or instance_exists(FadeOut)
{
exit;
}

if visible == true { mmx_title.visible = true;
if keyboard_check_pressed(global.player1_key_down)
    or keyboard_check_pressed(global.player2_key_down)
    {
        sound_play(opt_select); 
        c_sel+=1;
    }
    
if keyboard_check_pressed(global.player1_key_up)
    or keyboard_check_pressed(global.player2_key_up) 
    {
        sound_play(opt_select);
        c_sel-=1;
    }

if keyboard_check_pressed(global.player1_key_start)
    or keyboard_check_pressed(global.player2_key_start) 
    {
        selected = c_sel;
    }

}

else

{
    mmx_title.visible = false;
    c_sel = 1;
    selected = 0;
}

/* */
/*  */
