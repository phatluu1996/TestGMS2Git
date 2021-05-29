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
// LEFTWARD MOVEMENT
if direccion="left" {image_xscale=-1;
    if x > player.x {think=false; timer=0;
    image_speed=0.4; x=x-2;
    if image_index>7.5{image_index=0;}
}
else
// SLOWLY TURN TO THE OPPOSITE SIDE
if x < player.x {think=true}
if think=true {timer+=1; image_speed=0;
if timer==1 {image_index=8}
if timer==2 {image_index=8}
if timer==3 {image_index=9}
if timer==4 {image_index=9}
if timer==5 {direccion="right"}
}
}
// RIGHTWARD MOVEMENT
if direccion="right" {image_xscale=1;
if x < player.x {think=false; timer=0;
    image_speed=0.4; x=x+2;
    if image_index>7.5{image_index=0;}
}
else
// SLOWLY TURN TO THE OPPOSITE SIDE
if x > player.x {think=true}
if think=true {timer+=1; image_speed=0;
if timer==1 {image_index=8}
if timer==2 {image_index=8}
if timer==3 {image_index=9}
if timer==4 {image_index=9}
if timer==5 {direccion="left"}
}
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
