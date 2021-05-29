var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// Boss fills your life bar for battle.
if inActive = true {
if state="fillslife" { timer+=1; sprite_index=spr_bit_stand; image_speed=0;
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

 if isDead=false { visible = true; 
EnemyImageScale(); 

/// Idle 
if state="idle" {
    y=ystart; timer+=1; 
        sprite_index=spr_bit_stand; 
            image_speed=0.3; 
        if x >= xstart { direccion="left" }else{ direccion="right" }
if timer=think { 
if player.y > y-sprite_height {state="shoot"; timer=0; }
else {state="jump"; timer=0;}}
}


///  Jump
if state="jump" {
    timer+=1; 
        sprite_index=spr_bit_jump; 
            image_speed=0.4; 
if image_index > 1.5 { image_index=2; image_speed=0; }
if timer=1 {if x >= xstart { direccion="left" }else{ direccion="right" }}
if y > ystart - 100 { y=y-jumpspeed; } else { y=ystart - 100; state="dash"; timer=0; }
}





/// Dash
if state="dash" {
    y=ystart-100; 
        timer+=1; 
            sprite_index=spr_bit_dash; 
                image_speed=0.5; 
if image_index > 6.5 {image_index=7; image_speed=0; }
if direccion="right" {xx = bbox_right}else{xx = bbox_left}
var DashColl;
DashColl = instance_position(xx,y,objPrtSolid)
if DashColl > 0 {state="fall"; timer=0;}else{x=x+(dashspeed*image_xscale)}
}




///  Jump
if state="fall" {
    timer+=1; 
        sprite_index=spr_bit_jump; 
            image_speed=0.4; 
if image_index > 1.5 { image_index=2; image_speed=0; }

var JumpColl;
JumpColl = instance_position(x,y+2,objPrtSolid)
if JumpColl > 0 {state="idle"; timer=0;}else{y=y+(jumpspeed)}

}







/// Shoot
if state="shoot" {
    y=ystart; 
        timer+=1; 
            sprite_index=spr_bit_atk1; 
                image_speed=0.3; 
                    if image_index > image_number-1{if image_xscale=1{objDisc.direction=0; objDisc.speed=10; state="jump"; timer=0; }else{objDisc.direction=180; objDisc.speed=10; state="jump"; timer=0; }}; 
if timer=1 {if instance_number(obj_bit_disco)=2{state="jump"; timer=0; }}
if timer=3 {objDisc=instance_create(x,y-55,obj_bit_disco)}
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
