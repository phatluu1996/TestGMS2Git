if(global.pause){
    image_speed = 0;
    exit;
}else{
    image_speed = 1;
}
scr_platform_simple_move();
scr_platform_collision();


