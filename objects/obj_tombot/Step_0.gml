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
// Idle
if state="idle" {timer+=1; 
if timer>=9 { yja=ystart-100; if direccion="left"{xja=xstart-200}else{xja=xstart+200}
if xja > x {image_xscale=1}else{image_xscale=-1; }}
if timer>10 && timer < think{move_towards_point(xja,yja,1.5)}
if timer < think {sprite_index=spr_tombot; image_speed=0.5; }else{sprite_index=spr_tombot_atk; image_speed=0.3; }
if timer=think {r=instance_create(x,y,obj_tombot_shot); r.image_xscale=image_xscale}
if timer=think + 1 {state="attack"; timer=0; }
}
// Movement Horizontally
if state="moveHori" {timer+=1; sprite_index=spr_tombot_atk; image_speed=0.5; 
if distance_to_object(player) > 45 {state="attack"; timer=0; }
if timer > 1 {
if direccion="left"{y=yja; if x > xja-35 {x=x-4} else if x <= xja-35{state="turnAround"; timer=0;}}
if direccion="right"{y=yja; if x < xja+25 {x=x+2} else if x >= xja+25{state="turnAround"; timer=0;}}
}}
// Turn Around and Think on the next step
if state="turnAround" {timer+=1; sprite_index=spr_tombot_virar; image_speed=0; image_index=timer; 
    if timer=10 {if player.x<x{direccion="left"; state="1"; timer=2;}else{direccion="right"; state="1"; timer=2;}}
}
// Advance on the player
if state="attack" {sprite_index=spr_tombot_atk; image_speed=0.3; 
    xja=player.x; yja=player.y-20; move_towards_point(xja,yja,2); if xja>x{image_xscale=1; direccion="right"}else{image_xscale=-1; direccion="left"; }}

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
