var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

// Idle
if state="idle" {
    sprite_index = sprFallingLavaStart;
        image_speed = 0.5;
            if image_index > image_number - 1 {state="falling";}
}
// Falling
if state="falling" {
    sprite_index=sprFallingLavaFall;
        image_speed=0;
            if place_meeting(x,y+1,objPrtSolid) {
                Solid = instance_nearest(x,y+2,objPrtSolid)
                    vspeed=0;
                        hspeed=0;
                            state="smoke"
            }
            if not place_meeting(x,y+1,objPrtSolid) {
                vspeed = -7;
            }
}
// Smoke (After Collision)
if state="smoke" { 
    y = Solid.y;
        sprite_index = sprFallingLavaEnd;
            image_speed = 0.5;
                if image_index > image_number - 1 {state="invisible"; alarm[0]=1*room_speed;}
}
// Invisible - Timer to restart (Alarm[0])
if state="invisible" {
    y = ystart;
        x = xstart;
            visible = false;
}

}
}
else
{
{
/// PAUSE [TRUE]
gravity = 0
hspeed = 0
vspeed = 0
speed=0
image_index = image_index
image_speed = 0

}
}
