var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

think = 50; // Time thinking before attacking again
EnemySearchPlayer(); // Search for the nearest player
EnemyDeath(); // When life decreases to 0 or less.
EnemyDamageEvent(); // Immunity time after taking damage.
EnemyImageScale(); // Flip the sprite according to the value of the variable "direccion".
EnemyStartAtack(); // Defines how far from the nearest player to start attacking.

if inActive = true{
if isAtk = true {timer +=1;
if timer < think {image_index=0;} else image_index=timer-think; // sprites
if timer == think + 7 {timer = 0;}
/*
Note:
This enemy stops attacking when the player reaches
a position on the x coordinate greater than self.x-50
This can't be modified.
*/
if timer == think -1 { if player.x > x - 50 {timer=0;}}
if timer = think + 6 {create_moving_instance(x+19,y+4,obj_snowball,225,4)}
}
}

/* */
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

/* */
}
}
/*  */
