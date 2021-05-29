var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

think=50; // Time thinking before attacking again
EnemySearchPlayer(); // Search for the nearest player
EnemyDeath(); // When life decreases to 0 or less.
EnemyDamageEvent(); // Immunity time after taking damage.
EnemyStartAtack(); // Defines how far from the nearest player to start attacking.

if inActive=true and isAtk=true {
    EnemyOutside();
        vsp = 3;
            yy = sprite_height / 2;

if direccion="left" {if player.y > y {direccion="down"}else{direccion="up"}}
if direccion="down" {
    if player.y-15 > y + 10 && place_meeting(x-2,y+(yy+vsp),objPrtSolid){y=y+vsp;}else{direccion="up"}
}
if direccion="up" {
    if player.y-15 < y - 10 && place_meeting(x-2,y-(yy+vsp),objPrtSolid){y=y-vsp;}else{direccion="down"}
}

// idle
if state="idle" {
    timer+=1;
        image_speed = 0;
            image_index = 0;

if timer>=think {
    if player.y > y-15 && player.y < y+15 {state="shoot"; timer=0;}
}
}
/// Shoot
if state="shoot" {
    timer+=1;
        image_speed = 0.5;
            if image_index > image_number-1{
               create_moving_instance(x+26,y,obj_dodgeblaster_shot,0,4)
               state="idle";
               timer=0;
            }
}
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
