var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

EnemySearchPlayer(); // Search for the nearest player
EnemyDeath(); // When life decreases to 0 or less.
EnemyDamageEvent(); // Immunity time after taking damage.
EnemyImageScale(); // Flip the sprite according to the value of the variable "direccion".
EnemyStartAtack(); // Defines how far from the nearest player to start attacking.

if inActive = true{
if isAtk = true {
if canMove=true{image_index=0;image_speed=0;
    if place_free(x,y+1){y=y+1;}else{canMove=false;}
}
if canMove=false{image_speed=0.2;}
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
