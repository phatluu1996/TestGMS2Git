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

if inActive=true and isAtk=true {timer +=1;
EnemyOutside();
EnemyGravity();
// Idle
if state="idle" {
    sprite_index=spr_iceguy;
        image_speed=0.5;
            if timer=think {state="run"; timer=0;}
}
// Running
if state="run" {
    sprite_index=spr_iceguy;
        image_speed=0.5;
if timer<400 {scrHorMovement(250,4)}
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
