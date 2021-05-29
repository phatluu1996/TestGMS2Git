var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

EnemySearchPlayer();
BossDamageEvent();

if inActive == true && isAtk = true && isDead == false{ 
EnemyGravity();

if state = "idle" {
    image_speed=0.2; 
        var Floor;
        Floor = instance_position(x+2,y-2,objPrtSolid)
        if Floor > 0 {hspeed=0} else{hspeed=2}
    }
}

/// Immunity Time And Death Events

EnemySearchPlayer();
BossDamageEvent();
BossPerformDeath(x-46,x-108,y,y-32,objExplOrange);

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
