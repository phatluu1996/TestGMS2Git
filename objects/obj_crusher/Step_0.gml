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

if inActive=true{
if isAtk=true { 

// Idle
if state="idle" {
    timer+=1; 
        sprite_index=spr_crusher; 
            image_speed=0.5; 
                rocks=false;
                    rocks_t=0;
                        state="moveHori"; timer=0;
}

// Movement Horizontally
if state="moveHori" {timer+=1; rocks=false; sprite_index=spr_crusher_running; image_speed=0.5; 
scrHorMovement(150,3) 
if player.x > x-40 && player.x < x+40 {state="attack"; timer=0; }
}
// Attack
if state="attack" {timer+=1; sprite_index=spr_crusher_atk; image_speed=0;
if image_index > image_number-1 {image_speed=0; image_index=image_number-1;}else {image_speed=.2;}
if y >= ystart+150 {y=ystart+150; vspeed=0; state="backOff"; timer=0; }else{vspeed=7.5}
}
// Cancel the attack and returns to ystart position
if state="backOff" {timer+=1; sprite_index=spr_crusher_atkend; 
if image_index > image_number-1 {image_speed=0; image_index=image_number-1;}else {image_speed=.2;}
if y <= ystart {y=ystart; vspeed=0; state="idle"; timer=0; }else{vspeed=-7.5}
}
}
}

/// CRIANDO AS PEDRAS
if state = "attack" {

if floor(image_index) <= 4 {yy = y+42}
if floor(image_index) = 5 {yy = y+56}
if floor(image_index) = 6 {yy = y+71}
if floor(image_index) > 6 {yy = y+87}

floorNearest = instance_nearest(x,yy,objPrtSolid)
solo = place_meeting(x,y+yy,objPrtSolid)

if (solo) && (rocks=false) && (image_index>=4){
// PEDRAS GRANDES DIREITA CIMA
a=instance_create(x,floorNearest.y,obj_crusher_pedra3);
a.direction=0+random(90);
b=instance_create(x,floorNearest.y,obj_crusher_pedra3);
b.direction=0+random(90);
// PEDRAS MEDIAS DIREITA CIMA
c=instance_create(x,floorNearest.y,obj_crusher_pedra2);
c.direction=0+random(90);
d=instance_create(x,floorNearest.y,obj_crusher_pedra2);
d.direction=0+random(90);
// PEDRAS PEQUENAS DIREITA CIMA
e=instance_create(x,floorNearest.y,obj_crusher_pedra1);
e.direction=0+random(90);
f=instance_create(x,floorNearest.y,obj_crusher_pedra1);
f.direction=0+random(90);
// PEDRAS GRANDES DIREITA CIMA
g=instance_create(x,floorNearest.y,obj_crusher_pedra3);
g.direction=90+random(90);
h=instance_create(x,floorNearest.y,obj_crusher_pedra3);
h.direction=90+random(90);
// PEDRAS MEDIAS DIREITA CIMA
i=instance_create(x,floorNearest.y,obj_crusher_pedra2);
i.direction=90+random(90);
j=instance_create(x,floorNearest.y,obj_crusher_pedra2);
j.direction=90+random(90);
// PEDRAS PEQUENAS DIREITA CIMA
k=instance_create(x,floorNearest.y,obj_crusher_pedra1);
k.direction=90+random(90);
l=instance_create(x,floorNearest.y,obj_crusher_pedra1);
l.direction=90+random(90);
// PEDRA GIGANTE PARA BAIXO
m=instance_create(x,floorNearest.y,obj_crusher_pedra4);
m.direction=270;
/*
a linha de codigo abaixo anula a possibilidade
de criar novas rocks antes que ele suba e volte a posicao
de think novamente
*/
rocks=true;
}

}

/* */
/// MASKS

if sprite_index = spr_crusher_atkend {
if image_index <=  5 {mask_index=spr_crusher_mask0}
if image_index ==  6 {mask_index=spr_crusher_mask1}
if image_index ==  7 {mask_index=spr_crusher_mask2}
if image_index ==  8 {mask_index=spr_crusher_mask3}
if image_index ==  9 {mask_index=spr_crusher_mask4}
if image_index >= 10 {mask_index=spr_crusher_mask5}
}
if sprite_index = spr_crusher_atk {

if image_index <= 2 {mask_index=spr_crusher_mask5}
if image_index == 3 {mask_index=spr_crusher_mask4}
if image_index == 4 {mask_index=spr_crusher_mask3}
if image_index == 5 {mask_index=spr_crusher_mask2}
if image_index == 6 {mask_index=spr_crusher_mask1}
if image_index >= 7 {mask_index=spr_crusher_mask0}
}

if sprite_index != spr_crusher_atkend && sprite_index != spr_crusher_atk {
mask_index=spr_crusher_mask5;
}

/* */
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

/* */
}
}
/*  */
