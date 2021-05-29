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
// Thinking
if state="idle" {timer+=1; sprite_index=spr_metcolo; image_speed=0.5; 
disH=abs(x-player.x)
if timer=think {state="shoot"; timer=0; }
}
// Shoot
if state="shoot" {timer+=1; 
if hp >= 3 {sprite_index=spr_roadattacker; image_speed=0.5; }else{sprite_index=spr_roadattacker_crasher; image_speed=0.5; }
if image_index > 1.5 {image_index=0; }
if timer=1 {
    if hp >= 3 {
        if image_xscale=1{create_moving_instance(x,y,obj_roadattacker_shot,0,10); }
        else
        if image_xscale=-1{create_moving_instance(x,y,obj_roadattacker_shot,180,10); }
        }}
if timer=2 {state="run"; timer=0; }
}
// Running
if state="run" {timer+=1; 
// Run towards the player
if timer < 50 {if direccion="left"{x=x-4}else if direccion="right"{x=x+4}}
// Cancel the run
if timer>=50 {
    // before being damaged he returns to after a certain distance
    if hp >= 3 { 
        if direccion="left"{if x < player.x {state="turnAround"; timer=0; } else {timer=0; }}
        if direccion="right"{if x > player.x {state="turnAround"; timer=0; } else {timer=0; }}
        }
    // when damaged it keeps moving forward in the same direction and does not change
    if hp < 3 {timer=0; } 
    }
}
/// Cancel the run and turn around slowly
if state="turnAround" {timer+=1; sprite_index=spr_roadattacker; image_speed=0; 
image_index=timer+2; 
    if timer=10 {
    if image_xscale=-1 {direccion="right"; state="shoot"; timer=0; }
    if image_xscale= 1 {direccion="left"; state="shoot"; timer=0; }
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
