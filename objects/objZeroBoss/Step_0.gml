var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// Boss fills your life bar for battle.
if inActive = true {
if state="fillslife" { timer+=1; sprite_index=zerob_stand; image_speed=0;
if timer==1 {global.FreezingPlayers=true;}
if timer<10 {if distance_to_object(player)>160{timer=1;}}
if timer >= 10 { for(hp=0; hp<32; hp+=1){sound_play(addup);}
    if hp == 32 {state="idle"; timer=0; global.FreezingPlayers=false;}}
    }
}

/// Immunity Time And Death Events

EnemySearchPlayer();
BossDamageEvent();
BossPerformDeath(x+10,x-10,y,y-50,objExplBlue);



/// Movements And Sprites

 if state="idle" {timer+=1;image_speed=0.4;image_index=0; isDefense=false;
switch (timer)
{   
    case 1: if instance_number(player)=1{ if x>player.x {direccion="left"} if x<player.x {direccion="right" }}
    case 2: if direccion="right" {sprite_index=zerob_stand} else {sprite_index=zerob_stand0};break;
    case 30: state="doubleShot";timer=0;break
    case 76: state="dash";timer=0;break
}
 if distance_to_point(player.x,y)>80 && timer>3 {state="dash";timer=0} 
 //if collision_rectangle(x+300,y+20,x-305,y+70,arm_basic1,false,false) {state="selfDefence";timer=0;hspeed=0;} 
 //if collision_rectangle(x+300,y+20,x-305,y+70,arm_basic2,false,false) {state="selfDefence";timer=0;hspeed=0;}
}
 if state="doubleShot" {timer +=1;
switch (timer)
{
    case 1: if instance_number(player)=1{ if x>player.x {direccion="left"} if x<player.x {direccion="right"}}
    case 2: if direccion="right" {sprite_index=zerob_atk} else {sprite_index=zerob_atk0}; break;
    case 8: if direccion="left" {instance_create(x,y+20, obj_zerob_shotA)} else {instance_create(x+20,y+20, obj_zerob_shotA)}; break;
    case 17: if direccion="left" {instance_create(x,y+20, obj_zerob_shotA)} else {instance_create(x+20,y+20, obj_zerob_shotA)}; break;
    case 30: if direccion="left" {instance_create(x,y, obj_zerob_shotB)} else {instance_create(x+20,y, obj_zerob_shotB)}; break;
    case 34: state="idle";timer=0;break
}
}

if state="dash" { 
        timer+=1; 
            sprite_index=spr_bit_dash; 
                image_speed=0.5;
 if timer >=1 { if image_index=6 {image_index=3;}}
if timer=30 {state="punchTheFloor";timer=0;hspeed=0;}
if image_index > 6.5 {image_index=7; image_speed=0;}
if direccion="right" {spd=1; xx=bbox_right; sprite_index=zerob_atkS}else{spd=-1; xx=bbox_left; sprite_index=zerob_atkS0}
var DashColl;
DashColl=instance_position(xx,y,objPrtSolid)
if DashColl > 0 {state="punchTheFloor"; timer=0;}else{x=x+(8*spd)}
if collision_rectangle(x+60,y-110,x+45,y+10,player,false,false) {state="punchTheFloor";timer=0;hspeed=0}
}


 if state="punchTheFloor" {timer +=1;
switch (timer)
{
    case 0: if instance_number(player)=1{ if x>player.x {direccion="left"} if x<player.x {direccion="right"}}
    case 1: image_index=0 if direccion="right" {sprite_index=zerob_atkA} else {sprite_index=zerob_atkA0}; break;
    case 14: image_speed=0; global.camera_tremer=true; break;
    case 15: instance_create(x-15,y, obj_zerob_shotC);instance_create(x+20,y, obj_zerob_shotC) ; break;
    case 16: instance_create(x-30,y+10, obj_zerob_shotC);instance_create(x+35,y+10, obj_zerob_shotC) ; break;
    case 17: instance_create(x-45,y+20, obj_zerob_shotC);instance_create(x+50,y+20, obj_zerob_shotC) ; break;
    case 25: state="idle";timer=0;hspeed=0;break;
}
 if collision_rectangle(x+60,y-110,x+45,y+10,player,false,false) && timer>20 {state="idle";timer=0;hspeed=0;}
}
 if state="defense" {timer +=1; isDefense=true;
switch (timer)
{
    case 0: if instance_number(player)=1{ if x>player.x {direccion="left"} if x<player.x {direccion="right"}}
    case 1: if direccion="right" {sprite_index=zerob_def} else {sprite_index=zerob_def0}; break;
    case 15: state="idle";timer=0;break;
}
}

}
}
else
{
{
/// pause

gravity = 0
hspeed = 0
vspeed = 0
image_index = image_index
image_speed = 0


}
}
