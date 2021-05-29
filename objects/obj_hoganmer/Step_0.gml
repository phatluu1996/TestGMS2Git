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
if hp<1 {obj_knightman_chain.destroy=true; instance_destroy(); }
if isAtk=true {timer +=1; }
if x>player.x  and timer<25
{sprite_index=knightman_stand; direccion="left"; }
if x<player.x  and timer<25
{sprite_index=knightman_stand; direccion="right"; }

// Attacking to the right
if direccion="right" {
if timer=1 {r=instance_create(x,y,obj_kigman_escudo); r.image_xscale=image_xscale; }
if timer=25{r.destroy=true; }
if timer>90 {timer=0; isAtk=false; }
if timer>25 && timer<33{sprite_index=knightman_atk; image_speed=0.3; }
if timer>33 {sprite_index=knightman_atk_end; image_speed=0.5; }
if timer=33  {instance_create(x+22,y+28,obj_knightman_bola); }
}
// Attacking to the left
if direccion="left" {
if timer=1 {r=instance_create(x,y,obj_kigman_escudo); r.image_xscale=image_xscale; }
if timer=25{r.destroy=true; }
if timer>90 {timer=0; isAtk=false}
if timer>25 && timer<33{sprite_index=knightman_atk; image_speed=0.3; }
if timer>33 {sprite_index=knightman_atk_end; image_speed=0.5; }
if timer=33  {instance_create(x-22,y+28,obj_knightman_bola0); }
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
