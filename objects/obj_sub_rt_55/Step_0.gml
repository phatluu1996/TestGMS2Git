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
EnemyImageScale();

x0=xstart - 120 // x maximo a esquerda
x1=xstart + 32 // x maximo a direita
y0=ystart // y maximo abaixo
y1=ystart-120 // y maximo acima

if inActive=true and isAtk=true && isDead=false {timer+=1; 

if state="idle" { 
    sprite_index=spr_robot_rt_55_stand; 
        image_speed=0.1;
            if timer=think {
            // Aqui vao as condicoes para definir o ataque.
            }
}

// Jump // PRONTOOOO TESTAR
if state="jump" {
    sprite_index=spr_robot_rt_55_jump;
        image_speed=0.5
            if image_index < image_number-1 {vspeed=-7;}else{vspeed=0; state="fall"; timer=0;}
}

// Fall // PRONTOOOO TESTAR
if state="fall" {
EnemyGravity();
    sprite_index=spr_robot_rt_55_jump;
        image_speed=0;
            image_index=0;
            if place_meeting(x,y+1,objPrtSolid){state="idle"; timer=0;}
}

// Atacar com a corrente // PRONTOOOO TESTAR
if state=2 {timer+=1; sprite_index=spr_robot_rt_55_atk;
if y != y0 {y=y0;}
if timer < 7 {image_index=timer;}
if timer >= 7 {image_index=7;}
if timer=6 {
if direccion="left" {r=instance_create(x-29,y-21,obj_subboss_shot);}
if direccion="rigth" {r=instance_create(x+29,y-21,obj_subboss_shot);}
}
}
}

/// Immunity Time And Death Events

EnemySearchPlayer();
BossDamageEvent();
BossPerformDeath(x+25,x-25,y,y-60,objExplOrange);

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
