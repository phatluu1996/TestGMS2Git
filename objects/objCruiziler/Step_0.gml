var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES
// DeathPerforms
if hp <= 0 { obj_cruiziler_platform.isDead=true; instance_destroy(); }

think=40; // Time thinking before attacking again
EnemySearchPlayer(); // Search for the nearest player
BossDamageEvent(); // Immunity time after taking damage.
EnemyImageScale(); // Flip the sprite according to the value of the variable "direccion".
EnemyStartAtack(); // Defines how far from the nearest player to start attacking.

if inActive=true{ image_speed=0.3
if isAtk=true {

// thinking
if state="idle" {timer += 1;
if timer=think {state=choose("bombs","skyclaw"); timer=0;}
}
// throw bombs
if state="bombs" {timer += 1;
if timer=1 {instance_create(x+165, y+13,obj_cruiziler_shot)}
if timer=32 {instance_create(x+181, y+13,obj_cruiziler_shot)}
if timer=63 {instance_create(x+197, y+13,obj_cruiziler_shot)}
if timer=54 {state="idle"; timer=0;;}
}
// Create other enemy 1 (SkyClaw)
if state="skyclaw" {timer += 1;
    xx=__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )
    yy=y - 64; 
if timer=1 
{
    if instance_number(obj_skyclaw) < 2 
        {
        claw=instance_create(xx,yy,obj_skyclaw);
        claw.inActive=true; claw.visible=true; claw.isAtk=true;
        }
    else
    {state="bombs"; timer=0;}
}
if timer=2 {state="bombs"; timer=0;}
}
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
