var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

think=4; // Time thinking before attacking again
EnemySearchPlayer(); // Search for the nearest player
EnemyDeath(); // When life decreases to 0 or less.
EnemyDamageEvent(); // Immunity time after taking damage.
EnemyImageScale(); // Flip the sprite according to the value of the variable "direccion".
EnemyStartAtack(); // Defines how far from the nearest player to start attacking.


// QUANDO A VIDA ACABAR
if hp < 1 {destroy=true; }
if destroy=true {if sprite_index=spr_gulpfer_cheio{instance_change(obj_gulpfer_die1,true); }else{instance_change(obj_gulpfer_die2,true); }}

if isAtk=true {
// Idle
if state="idle" {timer+=1; sprite_index=spr_gulpfer; image_speed=0.5
if timer=think {state=1; timer=0; }
// Create the boobles
if instance_number(obj_gulpfer_bubbles)=0{
    r=instance_create(x,y,obj_gulpfer_bubbles)
    r.image_xscale=image_xscale
    r.visible=false; 
    }
}

// Movement Horizontal
if state="moveHori" {timer+=1; sprite_index=spr_gulpfer; image_speed=0.5
if image_xscale= 1{r.x=x+16; r.y=y+2; r.visible=true; }
if image_xscale=-1{r.x=x-16; r.y=y+2; r.visible=true; }
if timer < 90 {scrHorMovement(150,2)}
if dis < 50 {if y=ystart && x < xstart {if player.y > y{state="attack"; timer=0; }}}

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
