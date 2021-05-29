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
// Idle
if state="idle" {
    image_speed=0.5; 
        isDefense=true;
            if image_index > 10 {image_index=0}
    if timer=think {state="shoot"; timer=0;;}
}
// Shoot
if state="shoot"{
    if timer=9 {image_speed=0; isDefense=false}
        if timer=10 or timer=20 or timer=40 or timer=50
        {
            image_index=13; 
                if image_xscale==-1{create_moving_instance(x-12,y-16,obj_joy_shot,180,7)}
                else
                if image_xscale== 1{create_moving_instance(x+12,y-16,obj_joy_shot,0,7)}
}
if timer=60 {state="idle"; timer=0;}
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
