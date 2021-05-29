var temp;
temp=30
if not instance_exists(B2rform) && not instance_exists(mmx_title_shoot)
{
if press=true
{
if obj_title.c_sel=1 {scrNextMenu(introlevel);}
if obj_title.c_sel=2
{if file_exists("mmxsave.sav") {game_load("mmxsave.sav")}else sound_play(snd_error);press=false}
if obj_title.c_sel=3 {scrNextMenu(option_menu);}
}
}
if keyboard_check_released(global.player1_key_start) && visible = true
{if press=false
{image_index=0
sprite_index=x_s_right
instance_create(x+40,y+14,B2rform)
press= true}
}
switch obj_title.c_sel
{
case 1:
y=obj_title.y-16-temp
break;
case 2:
y=obj_title.y-temp
break;
case 3:
y=obj_title.y+16-temp
break;
}

