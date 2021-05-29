var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

think=55; // Time thinking before attacking again
EnemySearchPlayer(); // Search for the nearest player
EnemyDeath(); // When life decreases to 0 or less.
EnemyDamageEvent(); // Immunity time after taking damage.
EnemyStartAtack(); // Defines how far from the nearest player to start attacking.

if inActive=true and isAtk=true { timer +=1;
EnemyOutside();

if timer <= think {sprite_index=spr_flammingle; image_index=timer;}
if timer=think { if player.x > x+20 {timer=0;}}
if timer > think {sprite_index=spr_flammingle_atk; image_index=timer-think;}
}
/// Attacking
if isAtk=true {
if timer=think+5 {r=instance_create(x+20,y+24,obj_flammingle_shot)}
if timer=think+22 {timer=0;}
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
