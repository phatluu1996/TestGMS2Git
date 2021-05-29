var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

think=4; // Time thinking before attacking again
EnemySearchPlayer(); // Search for the nearest player
EnemyDeath(); // When life decreases to 0 or less.
EnemyDamageEvent(); // Immunity time after taking damage.
EnemyImageScale(); // Flip the sprite according to the value of the variable "direccion".
EnemyStartAtack(); // Defines how far from the nearest player to start attacking.

if inActive=true{
if isAtk=true {
// Falling
if canMove=true{image_index=0;image_speed=0;
    if place_free(x,y+5){y=y+5;}
    if !place_free(x,y+2) && place_meeting(x,y+2,objPrtSolid){
    canMove=false;
    }
}
// After touching the ground
if canMove=false{timer+=1
if timer=1{image_index=1}
if timer=2{image_index=1}
if timer=3{image_index=2}
if timer=4{image_index=2}
if timer=5{instance_change(obj_iworm,true)}
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
