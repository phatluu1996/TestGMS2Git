var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

think=60; // Time thinking before attacking again
EnemySearchPlayer(); // Search for the nearest player
EnemyDeath(); // When life decreases to 0 or less.
EnemyDamageEvent(); // Immunity time after taking damage.
EnemyImageScale(); // Flip the sprite according to the value of the variable "direccion".
EnemyStartAtack(); // Defines how far from the nearest player to start attacking.

if inActive=true and isAtk=true {timer +=1;
EnemyOutside();

// Idle
if state="idle" { timer +=1
if timer < think {image_index=0} else {state="shoot"; timer=0;}
}
// Shooting
if state="shoot" {
    image_speed=0.2;
        if image_index = image_number-1{create_moving_instance(x+3,y+23,obj_iceman_shot,180,0)}
        if image_index > image_number-1{state="idle"; timer=0;}
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
