var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

think=40; // Time thinking before attacking again
EnemySearchPlayer(); // Search for the nearest player
EnemyDeath(); // When life decreases to 0 or less.
EnemyDamageEvent(); // Immunity time after taking damage.
EnemyImageScale(); // Flip the sprite according to the value of the variable "direccion".
EnemyStartAtack(); // Defines how far from the nearest player to start attacking.

if inActive=true{
if isAtk=true {

/// Gravity
if state!="jump" {EnemyGravity();}
if state=="jump" {}
// Idle
if state="idle" {timer+=1;  sprite_index=spr_raybit;image_speed=0;
image_index=0;
disH=abs(x-player.x)
if timer=think {
    if player.x < x {direccion="left";}else{direccion="right"}
    if disH > 150 {state="jump";timer=0;} // at medium or long distances he just jumps
    else
    if disH < 150 {state=choose("shoot","jump");timer=0;} // at close range he jumps or shoots
    }
}
// Jump
if state="jump" {timer+=1; sprite_index=spr_raybit_jump;image_speed=0;
if timer <= 2 {image_index=timer }
if timer > 2 && timer <= 9 {image_index=2;}
if timer > 9 {image_index=3; EnemyGravity(); if place_meeting(x,y+1,objPrtSolid){state="idle"; timer=0;;vspeed=0;}}
EnemyJump(2,9,9,9*2,2,-7,-7);
}
// Shoot
if state="shoot" {timer+=1; sprite_index=spr_raybit_shooting;image_speed=0;
image_index=timer -1;
if timer=4 {
    if direccion="left"{create_moving_instance(x-6,y-20,obj_raybit_shot,180,7)}
    if direccion="right"{create_moving_instance(x+6,y-20,obj_raybit_shot,0,7);}
}
if timer=5 {state="idle"; timer=0;}
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
