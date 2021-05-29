var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

think = 100; // Time thinking before attacking again
EnemySearchPlayer(); // Search for the nearest player
EnemyDeath(); // When life decreases to 0 or less.
EnemyDamageEvent(); // Immunity time after taking damage.
EnemyImageScale(); // Flip the sprite according to the value of the variable "direccion".
EnemyStartAtack(); // Defines how far from the nearest player to start attacking.

if (inActive==true and isAtk==true) {timer+=1;

EnemyOutside();

if state="idle" {
    sprite_index=sprRockFall;
        image_speed=0;
            if timer=150 {state="fall"; timer=0;}
}
if state="fall" {timer=0;
    sprite_index=sprRockFall;
        image_speed=0;
            var Solid;
                Solid = instance_position(x,y+1,objPrtSolid)
                if Solid > 0 {state="start"}else{y=y+1}
}
if state="start" {timer=0;
    sprite_index=sprRockStart;
        image_speed=0.2;
if image_index > image_number-1 {state="stand"}
}
if state="stand" {
    if x < player.x{direccion="right"}else{direccion="left";}
        sprite_index=sprRockIdle;
            image_speed=0;
                if timer > 50 {state="handsUp"; timer=0;}
}
if state="handsUp" {
    sprite_index=sprRockUp;
        image_speed=0;
if instance_number(objRock)=0{create_moving_instance(x,__view_get( e__VW.YView, 0 ),objRock,270,10);}
if instance_number(objRock)=1{
var myRock;
myRock = instance_position(x,bbox_top,objRock);
if(myRock >= 0){
          with myRock {
                    instance_destroy();
          }
                    state="attack"
    }
}
}
if state="attack" {
    sprite_index=sprRockAttack;
        image_speed=0.5;
if image_index > image_number-1 {
    if image_xscale == 1 {instance_create(x+19,y-24,objHomingRock); state="stand"}
    if image_xscale ==-1 {instance_create(x-19,y-24,objHomingRock); state="stand"}
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
