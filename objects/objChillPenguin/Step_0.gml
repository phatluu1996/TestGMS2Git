/// @description  PATH

// chill penguin path
y0 = 208; // maximo de y abaixo
x0 = 7751; // maximo de x a esquerda
x1 = 7862; // maximo de x a direita

var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// Boss fills your life bar for battle.
if inActive = true {
if state="fillslife" { timer+=1; sprite_index=spr_chill_penguim_animation; image_speed=0;
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

 /// Idle
if state="idle"{timer+=1;sprite_index=spr_chill_penguim_stand;image_speed=0.1;desacelerar=false;
if x<player.x{image_xscale= 1}else{image_xscale=-1}
if y != y0{y=y0}
if timer=think{
    if instance_number(objChillIce3)==2{state="jump"}
    if x>x0 && x<x1{state=choose("meltIce","multipleShots","headIn");timer=0;}
    if x>x1{if image_xscale= -1{state=choose("meltIce","multipleShots","jump","headIn");}else{state=choose("multipleShots","headIn")}}
    if x<x0{if image_xscale=  1{state=choose("meltIce","multipleShots","jump","headIn");}else{state=choose("multipleShots","headIn")}}
   }
}
/// Blows ice against the player
if state="meltIce"{timer+=1;sprite_index=spr_chill_penguim_atkgelo1;image_speed=0.5;
if image_index>3.5{image_index=4;image_speed=0;}
t=10 // timer to create the ice blows if it gets slow just decrease
if y != y0{y=y0}
if timer=(1*t) or timer=(2*t) or timer=(3*t)  or timer=(4*t)  or timer=(5*t) or timer=(6*t) or timer=(7*t) or timer=(8*t)  or timer=(9*t)  or timer=(10*t){
if image_xscale= 1{create_moving_instance(x+22,y-22,objChillIce2,0,2)}
if image_xscale=-1{create_moving_instance(x-22,y-22,objChillIce2,0,2)}
}
if timer=(11*t){state="idle";timer=0;}
}
///  Throw ice cubes at the player
if state="multipleShots"{timer+=1;sprite_index=spr_chill_penguim_atkgelo2;image_speed=0;
image_index=timer;
if y != y0{y=y0}
if timer=5 or timer=10{
if image_xscale= 1{create_moving_instance(x+7,y-36,objChillIce1,0,5);}
if image_xscale=-1{create_moving_instance(x-7,y-36,objChillIce1,180,5);}
}
if timer >= 11{state="idle";timer=0;}
}
/// Jumps up to the snow-creating pin
if state="jump"{timer+=1;sprite_index=spr_chill_penguim_startjump;image_speed=0.5
if image_index>3.5{image_index=4;}
if image_xscale=1{xja=objChillPin.x}else{xja=objChillPin.x+20;}
yja=objChillPin.y
if timer >= 4{move_towards_point(xja,yja,5);}
if timer=400{state="swaying";timer=0;}
}
/// Swaying and Create Snow
if state="swaying"{timer+=1;sprite_index=spr_chill_penguim_atkneve;image_speed=0.5;
if image_xscale=1{x=xja;}else{x=xja}
y=yja;
if timer=5{
    if image_xscale=1{Snow=instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),objChillSnow)}
    if image_xscale=-1{Snow=instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 ),objChillSnow)}
    Snow.image_xscale=image_xscale;
   }
if timer=40{state="falling";timer=0;}
}
/// Falling
if state="falling"{timer+=1;sprite_index=spr_chill_penguim_endjump;image_speed=0;
yjb=y0
if image_xscale=1{xjb=x1;} else{xjb=x0;}
if timer>1{move_towards_point(xjb,yjb,3.5)}
if image_xscale==1{x=x+1} else{x=x-1}
if y >= y0-20{state="idle";timer=0;}
}
/// Head-in Attack
if state="headIn"{timer+=1;
if y != y0{y=y0;}
if timer<5{sprite_index=spr_chill_penguim_endjump;image_speed=0;image_index=timer;}
if timer>4{sprite_index=spr_chill_penguim_atkcabeca;image_speed=0;image_index=0;}
if timer>4{if desacelerar=false{if image_xscale=-1{direction=180;speed=10;}else{direction=0;speed=10;}}else{speed-=0.35;}
if speed<0.5{speed=0;}
if speed=0{state="idle";timer=0;}
}
}

}
}
else
{
{
/// Paused
image_speed=0;
vspeed=0;
hspeed=0;
gravity=0;

}
}
