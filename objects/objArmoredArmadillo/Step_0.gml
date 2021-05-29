var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// Boss fills your life bar for battle.
if inActive = true {
if state="fillslife" { timer+=1; sprite_index=spr_armadillo_animation; image_speed=0;
if timer==1 {global.FreezingPlayers=true;}
if timer<10 {if distance_to_object(player)>160{timer=1;}}
if timer >= 10 { for(hp=0; hp<32; hp+=1){sound_play(addup);}
    if hp == 32 {state="idle"; timer=0; global.FreezingPlayers=false;}}
    }
}

/// Path Floor
y0 = ystart;

/// Sprites Variables

if brokenHull = true {
sprIdle = spr_armadillo_stand1;
sprDamage = spr_armadillo_damage1;
sprDamageEspecial = spr_armadillo_damage2;
sprJump = spr_armadillo_jump1;
sprShoot = spr_armadillo_shooting1;
sprRollShieldEnd = spr_armadillo_atkend1;
sprShootFlasher = spr_armadillo_shooting_flash;
sprAnimation = spr_armadillo_animation;
sprRollShield = spr_armadillo_rolando;
}
if brokenHull = false {
sprIdle = spr_armadillo_stand0;
sprDamage = spr_armadillo_damage0;
sprDamageEspecial = spr_armadillo_damage2;
sprJump = spr_armadillo_jump0;
sprShoot = spr_armadillo_shooting0;
sprRollShieldEnd = spr_armadillo_atkend0;
sprShootFlasher = spr_armadillo_shooting_flash;
sprAnimation = spr_armadillo_animation;
sprRollShield = spr_armadillo_rolando;
}

/// Masks
if sprite_index = sprRollShield {mask_index=spr_armadillo_mask1}else{mask_index=spr_armadillo_mask1}

/// Immunity Time And Death Events

EnemySearchPlayer();
BossDamageEvent();
BossPerformDeath(x+10,x-10,y,y-50,objExplBlue);

/// Movements And Sprites

 /// Idle (Choose Attack)
if state="idle" {timer+=1; sprite_index=sprIdle; image_speed=0.5; speed=0; vspeed=0; hspeed=0; dashtimes=0; rollShield_timer=0; 
if x<player.x {image_xscale= 1}else{image_xscale=-1}
if y != y0 {y=y0; }
/// Choose Attack
if timer=think {state=choose("shoot","multipleShots","rollingShieldHor","rollingShieldVert"); timer=0; }
}
/// Shoot (4 shots in sequence)
if state="shoot" {timer+=1; sprite_index=sprShoot; image_speed=0; speed=0; vspeed=0; hspeed=0; 
if y != y0 {y=y0; }
if timer ==10 or timer=20 or timer=30 or timer=40 {
if image_xscale=-1 {create_moving_instance(x-7,y-42,obj_armadillo_shot,180,5)}
if image_xscale==1 {create_moving_instance(x-7,y-42,obj_armadillo_shot,0,5)}
}
if timer=41 {state="idle"; timer=0; }
}
///  Shoot in all directions
if state="multipleShots" {timer+=1; sprite_index=sprShootFlasher; 
image_index=timer; 
if y != y0 {y=y0; }
if timer=10 {
    for (i=0; i<=8; i+=1) {
        var objFlash; 
            objFlash=instance_create(x+11,y-38,obj_armadillo_flash); 
            objFlash.direction=40*i; 
           }
}
if timer=11{state="idle"; timer=0; }
}
/// RollingShield in Horizontal
if state="rollingShieldHor" {timer+=1; if y != y0 {y=y0; }
if timer<6 {sprite_index=sprJump; image_speed=0; image_index=timer; speed=0; 
    if image_xscale=1{ direction=0; } else if image_xscale=-1{direction=180; }}
if timer >=6 {sprite_index=sprRollShield; image_speed=0.5; speed=10; }
if timer>=50{speed=0; vspeed=0; hspeed=0; state="rollingShieldCancel"; timer=0; }
}
/// RollingShield in Vertical
if state="rollingShieldVert" {timer+=1; rollShield_timer+=1; 
// First direction
if timer<6 {sprite_index=sprJump; image_speed=0; image_index=timer; speed=0; 
if image_xscale=1{direction=45; }else if image_xscale=-1{direction=135; }}
// RollingShield Speed
if timer >=6 {sprite_index=sprRollShield; image_speed=0.5; speed=15; }
// Direction Fixes (not delete)
if direction>0 && direction<=90 {direction=45; }
if direction>90 && direction<=180 {direction=135; }
if direction>180 && direction<=270 {direction=225; }
if direction>270 && direction<=360 {direction=315; }
// Cancel the RollingShield after 8 collisions (dashtimes)
if ricochetTimes>=8 {
var Floor;
Floor = instance_position(x,y,objPrtSolid);
if Floor > 0{
    speed=0; 
        vspeed=0; 
            hspeed=0; 
                state="rollingShieldCancel"; timer=0; }
}
}
/// Cancel the RollingShield
if state="rollingShieldCancel" {timer+=1; sprite_index=sprRollShieldEnd; image_speed=0; speed=0; vspeed=0; hspeed=0; 
if y != y0{y=y0; }
if timer<6 {image_index=timer; if image_xscale=1{x=x-2; }else{x=x+2; }}
if timer=6 {state="idle"; timer=0; ricochetTimes=0;}
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
