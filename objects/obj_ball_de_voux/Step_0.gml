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
if state="idle" {sprite_index=spr_robot_animation; 
// MASKs
if image_index < 26 {mask_index=spr_ball_de_voux_mask0; }
if image_index > 25 && image_index < 30 {mask_index=spr_ball_de_voux_mask1; }
if image_index == 30 or image_index == 31 {mask_index=spr_ball_de_voux_mask2; }
if image_index > 31 {mask_index=spr_ball_de_voux_mask3; }
// isFalling
if canMove=true{steps=0; image_speed=0.2; 
if image_index > 3.5 {image_index=0; }
if !place_meeting(x,y+2,objPrtSolid){y=y+2}else{isRunning=true}
}
// Roll on the floor towards the player
if isRunning=true {steps+=1; canMove=false; 
if steps < 6 {image_speed=0.2; 
    if image_index > 3.5 {image_index=0; }
    if x > xstart-25 {x=x-5; }else{isAtk=true; steps=0; isRunning=false; }
    }
if steps == 6 {isAtk=true; timer=0; }
}
if isAtk=true{steps+=1; image_speed=0; image_index=steps; isRunning=false; isFalling=false; 
if steps == 35 {state="walking"; timer=0; }
}
}
// Walking
if state="walking" {sprite_index=spr_robot; image_speed=0.2; image_xscale=-1; mask_index=spr_robot_mask; 
if image_index > 7.5 {image_index=0; }
x=x-3; 
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
