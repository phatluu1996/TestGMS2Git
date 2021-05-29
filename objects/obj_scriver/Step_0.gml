var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

think = 40; // Time thinking before attacking again
EnemySearchPlayer(); // Search for the nearest player
EnemyDeath(); // When life decreases to 0 or less.
EnemyDamageEvent(); // Immunity time after taking damage.
EnemyImageScale(); // Flip the sprite according to the value of the variable "direccion".
EnemyStartAtack(); // Defines how far from the nearest player to start attacking.

if inActive=true and isAtk=true {timer +=1;
EnemyOutside();

// Gravity
if state!="jump" {EnemyGravity();}
// Idle
if state="idle" {
    sprite_index=spr_scriver;
        image_speed=0.3;
            disH = abs(x-player.x)
    if player.x < x {direccion="left";}else{direccion="right"}
if timer == think {state=1;timer=0;}
}

// Jump
if state="jump" {
    sprite_index=spr_scriver_jump;
        image_speed=0;
            if timer < 3 {image_index=timer-1;} else {image_index=2}
EnemyJump(2,9,9,9*2,2,-7,-7);
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
