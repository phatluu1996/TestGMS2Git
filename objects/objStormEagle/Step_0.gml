var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// Boss fills your life bar for battle.
if inActive = true {
if state="fillslife" { timer+=1; sprite_index=spr_storm_eagle_animation; image_speed=.5;
if sprite_index=spr_storm_eagle_animation { if image_index > 3.5 {image_index=2;}}
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

 /// Idle (Choose Attack)
if state="idle"{timer+=1;sprite_index=spr_storm_eagle_stand;image_speed=0.5;
if x<player.x{image_xscale= 1;}else{image_xscale=-1;}
if x!=x0{x=x0;}
if y!=y0{y=y0;}
if timer=think{state=choose("whirlwind","windInFavor","windVertical","FlyingToUp");timer=0;}
}
/// Ataque Tipo 1 *** Vento Horizontal Que Empurra O Player Contra O Boss
if state="whirlwind"{timer+=1;sprite_index=sp_HF_shootrt;image_speed=0;
if x!=x0{x=x0;}
if y!=y0{y=y0;}
if timer=4{
if image_xscale= 1{
    r=instance_create(x+33,y-35,obj_hf_storm_hori)
    r.image_xscale=image_xscale
}
if image_xscale=-1{
    r=instance_create(x-33,y-35,obj_hf_storm_hori)
    r.image_xscale=image_xscale
    }
}
if timer=8{state="idle";timer=0;}
}
///  Ataque Tipo 2 *** Vento Horizontal Que Puxa O Player A Favor Do Boss
if state="windInFavor"{timer+=1;
if x!=x0{x=x0;}
if y!=y0{y=y0;}
if timer=1{if x>player.x{direccion="right";}else{direccion="left";}}
if timer <= 3{sprite_index=sp_HF_rdyrt;image_index=timer;}
if timer >= 4{sprite_index=sp_HF_rdy_rt0;image_speed=.5;}
if timer=5{
            if image_xscale= 1{
                r=instance_create(x+33,y-35,hur_vaclt)
                r.image_xscale=image_xscale
                }
            if image_xscale=-1{
                r=instance_create(x-33,y-35,hur_vaclt)
                r.image_xscale=image_xscale
                }
                }
            if timer=40{state="idle";timer=0;}
}
/// Ataque Tipo 3 *** Vento Vertical Que Puxa O Player Para Baixo
if state="windVertical"{timer+=1;
if x!=x0{x=x0;}
if y!=y0{y=y0;}
if timer=1{if x>player.x{direccion="right";}else{direccion="left";}}
if timer <= 3{sprite_index=sp_HF_rdyrt;image_index=timer;}
if timer >= 4{sprite_index=sp_HF_rdy_rt0;image_speed=.5;}
if timer=5{instance_create(x,y,obj_hf_storm_vert);}
if timer=40{state="idle";timer=0;}
}
/// Ataque Tipo 4 *** Voar Para O Centro
if state="FlyingToUp"{timer+=1;sprite_index=sp_HF_arrivert;image_speed=0.5;
if x!=x0{x=x0;}
if y>y1{y=y-vsp;}
if y<y1{y=y1;}
if y=y1{state="idleAir"; timer=0;}
}
/// Ataque Tipo 5 *** Pensando No Ar
if state="idleAir"{timer+=1;sprite_index=sp_HF_arrivert;image_speed=0.5;
if x<player.x{image_xscale= 1;}else{image_xscale=-1;}
if x!=x0{x=x0;}
if y!=y1{y=y1;}
if timer=think{state=choose("FlyingToOutside","Birds","FlyingToFloor");timer=0;}
}
/// Ataque Tipo 6 *** Voar Para Cima Da Tela
if state="FlyingToOutside"{timer+=1;sprite_index=sp_HF_arrivert;image_speed=0.5;
if x!=x0{x=x0;}
if y>y2{y=y-vsp;}
if y<y2{y=y2;}
if y=y2{state="AttackVertical";timer=0;}
}
/// Ataque Tipo 7 *** Cuspir Um Ovo Que Transforma No Passaro
if state="Birds"{timer+=1;sprite_index=sp_HF_coughrt;image_speed=0;image_index=timer;
if x!=x0{x=x0;}
if y!=y1{y=y1;}
if timer=6{
        if image_xscale=1{instance_create(x+10,y-49,obj_hf_ovo);}
        if image_xscale =-1{instance_create(x-10,y-49,obj_hf_ovo);}
}
if timer= 10{state="idleAir"; timer=0;}
}
/// Ataque Tipo 8 *** Voar ate o chao!
if state="FlyingToFloor"{timer+=1;sprite_index=sp_HF_arrivert;image_speed=0.5;
if x!=x0{x=x0;}
if y<y0{y=y+vsp;}
if y>y0{y=y0;}
if y=y0{state="idle";timer=0;}
}
/// Ataque Tipo 9 *** Cria Os Storm Eagles Que Voam Na Diagonal
if state="AttackVertical"{timer+=1;sprite_index=sp_HF_arrivert;image_speed=0.5;
if x!=x0{x=x0;}
if y!=y2{y=y2;}
spd=35 // ESPACO DE TEMPO DA CRIACAO ENTRE UM STORM EAGLE E OUTRO
if timer=(1*(spd)) or timer=(3*(spd)) or timer=(5*(spd)){
        if image_xscale==1{instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),objStormEagleDiveAtkR);}
        if image_xscale=-1{instance_create(__view_get( e__VW.XView, 0 )+256,__view_get( e__VW.YView, 0 ),objStormEagleDiveAtkL);}
}
if timer=(2*(spd)) or timer=(4*(spd)){
        if image_xscale=-1{instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),objStormEagleDiveAtkR);}
        if image_xscale==1{instance_create(__view_get( e__VW.XView, 0 )+256,__view_get( e__VW.YView, 0 ),objStormEagleDiveAtkL);}
}
if timer=(6*(spd)){state="FlyingToDown";timer=0;} 
}
/// Ataque Tipo 10 *** Voar Para O Centro
if state="FlyingToDown"{timer+=1;sprite_index=sp_HF_arrivert;image_speed=0.5;
if x!=x0{x=x0;}
if y<y1{y=y+vsp;}
if y>y1{y=y1;}
if y=y1{state="idleAir";timer=0;}
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
