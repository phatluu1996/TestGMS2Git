if(global.pause){
    image_speed = 0;
    exit;
}else{
    image_speed = 1;
}

if(player != noone){    
    timer-=1;
    if(timer <= 0){
        instance_destroy();
    }
    x = player.x + lengthdir_x(40, dir);
    y = player.y - 19 + lengthdir_y(40, dir);
    dir+=3;
}

