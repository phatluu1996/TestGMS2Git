var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

think=10; // Time thinking before attacking again
EnemySearchPlayer(); // Search for the nearest player
EnemyDeath(); // When life decreases to 0 or less.
EnemyDamageEvent(); // Immunity time after taking damage.
EnemyImageScale(); // Flip the sprite according to the value of the variable "direccion".
EnemyStartAtack(); // Defines how far from the nearest player to start attacking.

if inActive=true{
if isAtk=true {
// Thinking
if state="idle" {timer+=1; image_speed=.5;
if timer=think {state="run"; timer=0;}
}
// Run
if state=1 {timer+=1;
spd=3
if isFalling=false {
// Gravity
if place_free(x,y+spd){EnemyGravity();}else{gravity=0;vspeed=0;}
// Movement horizontally to the left
if direccion="left" {sprite_index=spr_spiky_esq; if place_free(x-spd,y){x=x-spd}else{direccion="right";}}
// Movement horizontally to the right
if direccion="right" {sprite_index=spr_spiky_dir; if place_free(x+spd,y){x=x+spd}else{direccion="left";}}
// When you have nowhere else to go
if !place_free(x,y+spd) && !place_free(x-spd,y) && !place_free(x+spd,y) {isFalling=true}
}
if isFalling=true { sprite_index=spr_spiky_die; }
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
