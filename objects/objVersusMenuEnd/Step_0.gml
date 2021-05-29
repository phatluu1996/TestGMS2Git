/*
/// Keys Control

if keyboard_check_released(vk_down) or keyboard_check_released(ord('L')) { c_sel+=1 sound_play(snd_selection); }
if keyboard_check_released(vk_up) or keyboard_check_released(ord('O')) { c_sel-=1; sound_play(snd_selection); }

// IDENTIFICA A TECLA ENTER PRESSIONADA
// ATIVA A VARIAVEL "selected"
if keyboard_check_pressed(vk_enter) or keyboard_check_released(vk_space){selected=c_sel;}
else
{ c_sel = 1 }

/* */
/*  */
