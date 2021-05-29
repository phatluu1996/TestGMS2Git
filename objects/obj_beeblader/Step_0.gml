var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

think=40; // Time thinking before attacking again
EnemySearchPlayer(); // Search for the nearest player
BossDamageEvent(); // Immunity time after taking damage.
EnemyStartAtack(); // Defines how far from the nearest player to start attacking.

if inActive=true{
if isAtk=true && isDead=false {timer+=1; sprite_index=spr_beeblader; image_speed=1; 

// Vertical Movement (Independent of state values)
spd=2; // speed for descending and ascending
dis=30; // distance to go down and up
if direccion="left"{direccion="down";} // always starts in left
if direccion="down" {if y < ystart+dis {y=y+spd} else if y >= ystart+dis{direccion="up"; }}
if direccion="up" {if y > ystart {y=y-spd} else if y <= ystart{direccion="down"; }}


// Idle
if state="idle" {shots=0; if timer=think {state=choose("balls","missiles","shoots"); timer=0; }}
// Create the balls de voux
if state ="balls" {shots=0; 
if timer=1 {if instance_number(obj_ball_de_voux)!=0{state="idle"; timer=0; }}
if timer=10 {instance_create(x+75,y+75,obj_ball_de_voux)}
if timer=50 {instance_create(x+75,y+75,obj_ball_de_voux)}
if timer=100 {state="idle"; timer=0; ; }
}
// Shoot Missiles
if state="missiles" {shots=0; 
if timer=10 {instance_create(x+52,y+62,obj_bee_missel)}
if timer=50 {instance_create(x+52,y+62,obj_bee_missel)}
if timer=100 {state="idle"; timer=0; ; }
}
// Shoot
if state="shoots" {shots+=1; 
if shots=1{instance_create(x+19,y+84,obj_bee_tiros)}
if shots=2{shots=0}
if timer=100 {state="idle"; timer=0; ; }
}
}
}

/// Immunity Time And Death Events

EnemySearchPlayer();
BossDamageEvent();
BossPerformDeath(x+128,x-128,y+96,y+96,objExplOrange);

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
