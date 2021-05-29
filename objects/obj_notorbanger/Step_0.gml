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

if inActive=true and isAtk=true {timer +=1;
EnemyOutside();

// Gravity
if state!="jump" {EnemyGravity();}

// Idle
if state="idle" {
    sprite_index=spr_notorbanger_shooting;
        image_speed=0;
            image_index=4;
                disH=abs(x-player.x)
if timer=think {
    if player.x<x {direccion="left";}else{direccion="right"}
    if disH>150 {state="jump"; timer=0;}
    else
    if disH<150 {state=choose("shoot","jump"); timer=0;}
    }
}
// Jump
if state="jump" {
    sprite_index=spr_notorbanger_jump;
        image_speed=0;
            image_index=0;
EnemyJump(2,9,9,9*2,2,-7,-7);
}
// Shoot
if state="shoot" {timer+=1; sprite_index=spr_notorbanger_shooting;image_speed=0;
disH=abs(x-player.x)
if disH<50 {image_index=0; xx=0; yy=46;}
if disH>75 && disH<100 {image_index=1 xx=10; yy=43;}
if disH>100 && disH<125 {image_index=2 xx=21; yy=40;}
if disH>125 && disH<150 {image_index=3 xx=25; yy=35;}
if disH>150 {image_index=4}
i=image_index;
if timer=15 {instance_create(x+(xx*image_xscale),y-yy,obj_notorbanger_shot);}
if timer=16 {state="idle"; timer=0;}
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
