var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

think=40;  // Time thinking before attacking again
EnemySearchPlayer();  // Search for the nearest player
EnemyDeath();  // When life decreases to 0 or less.
EnemyDamageEvent();  // Immunity time after taking damage.
EnemyImageScale();  // Flip the sprite according to the value of the variable "direccion".
EnemyStartAtack();  // Defines how far from the nearest player to start attacking.

if inActive=true and isAtk=true {timer +=1;
EnemyOutside();

if sprite_index=batbig_atk {if image_index>6.5{image_index=2}}
// Advance on the nearest player
if timer=40 {sprite_index=batbig_atk;  image_speed=0.5}
if timer > 40 {move_towards_point(player.x,player.y-15,1.5)
x1=sprite_width/2
y1=sprite_height
if collision_rectangle(x-x1,y,x+x1,y+y1,player,false,false){
atk_end=true
}
}
// Back off to up after attack the player
if atk_end=true {
if place_free (x,y-7) {y=y-7}
if !place_free (x,y-21) {sprite_index=batbig; vspeed=0; hspeed=0; atk_end=false; isAtk=true; timer=0}
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
