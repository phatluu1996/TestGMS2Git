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

if inActive=true and isAtk=true {timer+=1;
EnemyOutside();

if place_meeting(x,y-30,objTopLadder) { y += 30; timer=30;}
if not place_meeting(x,y+20,objLadder){ y -= 10; timer=5;}

    if timer >= 5 && timer <= 15 {y=y-2; image_speed=0.4}
    if timer=16 {image_speed=0}
    if timer >= 30 && timer <= 40 {y=y+2; image_speed=0.4}
    if timer=41 {image_speed=0}
    if timer >= 50 {timer=0}
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
