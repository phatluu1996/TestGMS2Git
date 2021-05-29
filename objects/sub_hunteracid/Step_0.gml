var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

EnemySearchPlayer();
EnemyDamageEvent();
EnemyImageScale();


if inActive == true && isDead == false{

if y!=ystart{y=ystart}
if image_xscale=-1{xx=x-17}else{xx=x+17}
// DIRECAO
if  timer=0{if x < player.x{direccion="right";}else{direccion="left";}}
// ATAQUES
if isAtk = true && isDead = false {
// PENSAR=============
if think=true{
think_t +=1 ;timer=0;state=0;image_speed=0;hspeed=0;if image_index >=1.5{image_index=0}
if think_t >=15{
if dis <=200{think=false;state=irandom(1)}
}
}
else{timer+=1;think_t=0}
// CORRER E BATER NA PAREDE
if state=0{
image_speed=0.5 if image_index=2{image_index=0}
if timer=1{if image_xscale=1{hspeed=4}else{hspeed=-4}}
if timer <=50 && timer >=12{
if !place_free(x-6,y){vspeed=-2;hspeed=1;global.camera_tremer=true}
if !place_free(x+6,y){vspeed=-2;hspeed=-1;global.camera_tremer=true}}
if timer >=56{hspeed=0;vspeed=4}
if timer=63{think=true;vspeed=0}
}
// ACIDO==============
if state=1{
if timer=1{ball=instance_create(xx,y-55,bal_hunteracid);ball.vspeed=-8
if image_xscale=1{ball.hspeed=5}else{ball.hspeed=-5}}
if timer=20{ball=instance_create(xx,y-55,bal_hunteracid);ball.vspeed=-6
if image_xscale=1{ball.hspeed=4}else{ball.hspeed=-4}}
if timer=30{think=true;vspeed=0}
}
}
else
{timer=0}

}

/// Immunity Time And Death Events

EnemySearchPlayer();
BossDamageEvent();
BossPerformDeath(x+30,x-30,y,y-70,objExplOrange);

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
