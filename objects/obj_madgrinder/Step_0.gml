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

if inActive=true && isAtk=true && isDead=false { EnemyGravity();
if state="idle" {timer+=1;sprite_index=spr_madgrinder_stand;image_speed=0.5;
if timer=think {state="moveHori"; timer=0;}
}
// Movement Horizontal
if state="moveHori" {timer+=1;
if direccion="left"{sprite_index=spr_madgrinder_moving0;image_speed=0.5;}else{sprite_index=spr_madgrinder_moving1;image_speed=0.5;}
y=ystart;
if timer < 9000 {scrHorMovement(150,2)}
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
