var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
image_speed = 0.5

 if place_meeting(x,y+4,objPrtSolid) {hspeed =-10;vspeed = 0} ;
 if place_meeting(x-1,y,objPrtSolid) && place_meeting(x-5,y+3,objPrtSolid) {vspeed =-10;hspeed = 0}
 if !place_meeting(x,y+4,objPrtSolid) && !place_meeting(x-3,y,objPrtSolid) {vspeed =10;hspeed = 0}
        
        // BACKUP
        /*
        if !place_free(x,y+4) {hspeed =-10; vspeed = 0} ;
        if !place_free(x-1,y) && !place_free(x-5,y+3) {vspeed =-10; hspeed = 0}
        if place_free(x,y+4) && place_free(x-3,y) {vspeed =10; hspeed = 0}

/* */
}
}
else
{
{
bala = true
gravity = 0
hspeed = 0
vspeed = 0
image_index = image_index
image_speed = 0

/* */
}
}
/*  */
