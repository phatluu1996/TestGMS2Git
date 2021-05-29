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

if inActive = true{
if isAtk = true {
// Thinking
if state="idle" {timer+=1;  sprite_index=spr_amenhopper; image_speed=0.2;
if not place_meeting(x,y+2,objPrtWater) and not place_meeting(x,y+2,objPrtSolid){EnemyGravity();}
if timer = think {
    if place_meeting(x,y+2,objPrtWater){if !place_free(x+4,y-2){state="jump"; timer=0;} else {state="slide"; timer=0;}}
    if place_meeting(x,y+2,objPrtSolid) {state="jump"; timer=0;}
    if player.x < x {direccion="left";}else{direccion="right"}
    }
}
// Jump
if state="jump" {timer+=1; sprite_index=spr_amenhopper_jump; image_speed=0;
if timer <= 3 {image_index = timer; }
if timer > 3 && timer < 9 { image_index=2; }
if timer < 9 { image_index=3; }
EnemyJump(2,9,9,9*2,2,-7,-7);
}
// Slide in water
if state="slide" {timer+=1; sprite_index=spr_amenhopper_slide;image_speed=0.3;
if image_index > 5.5 {image_index=2;}
if timer >= 2 {if direccion="left"{x=x-5;}else if direccion="right"{x=x+5;}}
if timer = 16 {state="idle"; timer=0;}
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
