var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

think = 3; // Time thinking before attacking again
EnemySearchPlayer(); // Search for the nearest player
EnemyDeath(); // When life decreases to 0 or less.
EnemyDamageEvent(); // Immunity time after taking damage.
EnemyImageScale(); // Flip the sprite according to the value of the variable "direccion".
EnemyStartAtack(); // Defines how far from the nearest player to start attacking.

if inActive = true{
if isAtk = true {

// Thinking
if state="idle" {timer+=1;sprite_index=spr_rollinggabyool;image_speed=.1;
if timer == think {state="moveHori"; timer=0;}
}
// Run
if state="moveHori" {timer+=1; sprite_index=spr_rollinggabyool;image_speed=0.5;
if timer < 4000 {scrHorMovement(141,4);}
if timer == 4000 {EnemyFlip();}
}
}
}

/// MASKS

if image_index < 7 {visible=true}else{visible=true;}

if image_index < 6 {mask_index=spr_rollinggabyool_mask0}
if image_index >= 6 && image_index <= 8 {mask_index=spr_rollinggabyool_mask2}
if image_index >= 9 && image_index <= 14 {mask_index=spr_rollinggabyool_mask1}
if image_index > 14 {mask_index=noone}

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
