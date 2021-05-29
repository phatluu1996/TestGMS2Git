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

if inActive=true and isAtk=true {
EnemyOutside();

// Idle
if state="idle" {
    timer+=1;  
        sprite_index=spr_shark;
            image_speed=0.5;
if timer=think {state="run"; timer=0;}
}
// Running
if state="run" {
    timer+=1; 
        sprite_index=spr_shark;
            image_speed=0.5;
if timer < 60 {if direccion="left"{x=x-3}else if direccion="right"{x=x+3}}
// Cancel the run
if timer=60 {state="runCancel"; timer=0;}
}
/// Cancel the run and Turn Around
if state="runCancel" {timer=0; 
    sprite_index=spr_shark_virando; 
        image_speed=0.1;
            if image_index > image_number-1 {
                if image_xscale=-1 {direccion="right"; state="run"; timer=0;}
                if image_xscale= 1 {direccion="left"; state="run"; timer=0;}
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
