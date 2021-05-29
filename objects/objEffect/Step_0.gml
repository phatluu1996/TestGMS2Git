if(global.pause){
    image_speed = 0;
    exit;
}else{
    image_speed = 1;
}

switch(sprite_index){
    case spr_dash_dust:
        if(scr_anim_end() || target.state != "dash"){
            instance_destroy();
        }
        break;
        
    case spr_dash_up_spark:
        if(scr_anim_end() || target.state != "dash_up"){
            instance_destroy();
        }
        break;
        
    case spr_wall_dust:
        if(scr_anim_end()){
            instance_destroy();
        }
        break;
}

