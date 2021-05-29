var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

EnemySearchPlayer(); // Search for the nearest player
EnemyDeath(); // When life decreases to 0 or less.
EnemyDamageEvent(); // Immunity time after taking damage.
EnemyImageScale(); // Flip the sprite according to the value of the variable "direccion".
EnemyStartAtack(); // Defines how far from the nearest player to start attacking.

if inActive=true and isAtk=true { EnemyGravity();
dis=distance_to_object(player)
if state="idle" { timer +=1; image_speed=0.3; hspeed=0; if image_index >=1.5 {image_index=0; }
if timer >=think {
if dis <=20 {state="superSonic"; timer=0;}
if dis >=21 && dis <=128{state="run"; timer=0;; image_index=5; }
}
}
// Super sonic attack
if state="superSonic"{
if timer=1 {image_speed=0; image_index=3; 
            ball=instance_create(x,y+10,bal_sonicdog)
            if image_xscale=-1{ball.x=x-45; } else {ball.x=x+45; ball.image_xscale=-1; }
            }
if timer=30 {think=true}
}
// Run
if state="run"{ timer +=1; 
if timer=20 
{ball1=instance_create(x,y-13,bal_sonicdog1)
 if image_xscale=-1{ball1.hspeed=-10; timer=0} else {ball1.hspeed=+10; ball1.image_xscale=-1; timer=0}}
if image_index >=9 {image_index=5}
if image_xscale=1{if place_free(x+4,y){x=x+4}} else {if place_free(x-4,y){x=x-4}}
if place_meeting(x-10,y,objPrtSolid) && image_xscale=-1 && place_meeting(x,y+1,objPrtSolid)
     {hspeed=0; state="jump"; timer=0; image_speed=0; image_index=6}
if place_meeting(x+10,y,objPrtSolid)&& image_xscale=1 && place_meeting(x,y+1,objPrtSolid)
     {hspeed=0; state="jump"; timer=0; image_speed=0; image_index=6}
if dis <=20 {think=true; hspeed=0}
}
// Jump
if state="jump"{ timer +=1;
if timer=1{image_index=0}
if timer=5 {vspeed=-6}
if timer >=5 && timer <=25  {image_index=6
if image_xscale=1{if place_free(x+4,y){ x=x+4} } else {if place_free(x-4,y){ x=x-4}}
}
 else {hspeed=0}
if place_meeting(x,y+1,objPrtSolid)&&  timer >=15 {think=true; image_index=0; vspeed=0}
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
