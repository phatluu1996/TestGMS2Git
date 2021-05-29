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
if isAtk=true { EnemyGravity(); 

// Thinking
if state="idle" {
    timer+=1;  
        sprite_index=spr_mettool; 
            image_speed=0; 
            
if timer < think 
{
    image_index=0; 
    if player.x < x {direccion="left"; }else{direccion="right";}
}
if timer >= think {image_index=timer-think;}
if timer=think + 4 {state=choose("run","shoot"); timer=0; }
}

// Running
if state="run" {
    timer+=1; 
        sprite_index=spr_mettool_walking; 
            image_speed=0; 
                image_index=timer;
                
if timer > 4 {timer=0; }
if timer > 0 {
if direccion="left"{
        if x < player.x {direccion="right"; }
        if dis < 50 {state="idle"; timer=0} else {x=x-2}
        }
if direccion="right"{
        if x > player.x {direccion="left"; }
        if dis < 50 {state="idle"; timer=0; } else {x=x+2}
        }
    }
}

// Shooting
if state="shoot" {
    timer+=1; 
        sprite_index=spr_mettool_shooting; 
            image_speed=0; 
                image_index=0; 
                
if timer=3 { 
    dir=point_direction(x,y,player.x,player.y-32);
    if direccion="left" {create_moving_instance(x-4,y-6,obj_mettooll_shot,dir,6);}
    if direccion="right" {create_moving_instance(x+4,y-6,obj_mettooll_shot,dir,6);}
    }
if timer=4 {state="idle"; timer=0; }
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
