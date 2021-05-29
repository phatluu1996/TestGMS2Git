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

if y < ystart-50 {y=ystart-50;vspeed=0;}
// Directions
if x < player.x {direccion="right";}
else {direccion="left";}
// Distance 
dis=distance_to_object(player)
libreL= place_free(x-3,y)
libreR= place_free(x+3,y)
ALGO_L= !place_free(x-3,y)
ALGO_R= !place_free(x+3,y)
ALGO_D= !place_free(x,y+3)
if state=0 {EnemyGravity(); image_speed=0;hspeed=0;vspeed=0;
if ALGO_D {timer+=1;image_index=0;hspeed=0;vspeed=0}
if timer >= think {
if dis <= 110 {state="Jump"; timer=0;}
}
}
// Jump
if state="Jump"{image_index=1;
if timer=1 {vspeed=-7; if image_xscale=-1 {x=x-5} else {hspeed=1}}
if timer=14 {state="Floating"; timer=0; vspeed=0; hspeed=0;}
}
// Floating
if state="Floating"{image_speed=0.5;if image_index >=3.5 {image_index=2}
if timer=20 {state="AdvanceInPlayer"; timer=0;}
}
// Attack to player
if state="AdvanceInPlayer"{if image_index >=3.5 {image_index=2}
xx=player.x; yy=player.y;
if timer >= 2 && timer <= 49{move_towards_point(xx,yy,3)}
if timer=45 {friction =0.090;}
if timer=50 {state="2"; timer=0; hspeed=0; vspeed=0;}
if  ALGO_D{state="idle"; timer=0; hspeed=0; vspeed=0; image_speed=0; image_index=1;}
}
} 
else
{timer=0}
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
