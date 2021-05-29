if(instance_find(objPrtPlayer, 0) != noone && topLadder != noone){
    var state;
    state = instance_find(objPrtPlayer, 0).state;
    if(state == "climb_down" || state == "climb"){
        instance_deactivate_object(topLadder);
    }else{
        if(state != "climb_up" && !place_meeting(x, y, objPrtPlayer)){
            instance_activate_object(topLadder);
        }        
    }
}

