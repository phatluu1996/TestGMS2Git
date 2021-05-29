topLadder = noone;
if(instance_position(x, bbox_top - 1, objLadder) < 0){
    topLadder = instance_create(x, y, objTopLadder);
    instance_deactivate_object(topLadder);
}

