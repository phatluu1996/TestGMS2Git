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

if inActive=true{
if isAtk=true { EnemyGravity(); 
// Movement to the left
if direccion="left" {
if x > player.x {think=false; timer=0; 
image_speed=0.4; 
if place_free(x-2,y){x=x-1;}
}
else
// turn around
if x < player.x {think=true}
if think=true {timer+=1; 
if timer=5 {direccion="right"}
}}
// Movement to the right
if direccion="right" {
if x < player.x {think=false; timer=0; 
image_speed=0.4; 
if place_free(x+2,y){x=x+1; }
}
else
// turn around
if x > player.x {think=true}
if think=true {timer+=1; 
if timer=5 {direccion="left"}
}}
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
