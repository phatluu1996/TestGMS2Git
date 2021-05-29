if isFalling=true {
    speed=0; 
        var Floor;
        Floor = instance_position(x,y+2,objPrtSolid)
        if Floor > 0 {isFalling=false; speed=7;}else{y=y+2;}
}
if objBit.isDead == true {instance_destroy();}

