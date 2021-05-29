/// @description  F4 FULLSCREEN
if keyboard_check_released(vk_f4) {global.fullscreen = !global.fullscreen }

if global.fullscreen = true
{
    window_set_fullscreen(true);
}
else
{
    window_set_fullscreen(false);
    window_set_size(640,480);
}

/// F5 ROOM RESTART
if keyboard_check(vk_f5)
{
room_restart();
}

/// F6 GAME RESTART
if keyboard_check(vk_f6)
{
game_restart();
}

