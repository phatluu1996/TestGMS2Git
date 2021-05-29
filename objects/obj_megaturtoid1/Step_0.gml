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
if isAtk=true {timer +=1
if timer < think {image_speed=0.4; if image_index > 2.5 {image_index=0;}}
if timer >= think {image_index=timer - think;}
if timer == think + 20 {timer=0;}
if timer=think + 5 {create_moving_instance(x+7,y-44,obj_megaturtoid_shot,90,0)}
if timer=think + 15 {create_moving_instance(x-7,y-44,obj_megaturtoid_shot,90,0)}
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
