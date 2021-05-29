var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

if isDead = true 
{ 
sprite_index = spr_cruiziler_destroyed;
image_speed = 0;
}
else
{
sprite_index = spr_cruiziler;
if objCruiziler.isDead == true {self.isDead=true;}
}


/// Immunity Time And Death Events

EnemySearchPlayer();
BossDamageEvent();
BossPerformDeath(x+216,x-216,y+70,y-60,objExplOrange);

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
