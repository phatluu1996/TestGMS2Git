/// @description  FULL SCREEN

if room != first_room {

if global.fullscreen = true
{
    window_set_fullscreen(true);
}
else
{
    window_set_fullscreen(false);
    window_set_size(640,480);
}

}
else
{
    global.fullscreen = false
    window_set_fullscreen(false);
}

