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

// Think
if state="idle" {image_index=0;
if timer=think{if x>player.x{state=choose("missiles","cannon");timer=0;}else{state="idle"; timer=0;}}}
// Shooting Missiles
if state="missiles" {image_index=timer;
if timer=2 {create_moving_instance(x+22,y+15,obj_gunshot_shot,180,7)}
if timer=5 {create_moving_instance(x+19,y+19,obj_gunshot_shot,180,7)}
if timer=7 {state="idle"; timer=0;;}
}
// Shooting Cannon
if state="cannon" {image_index=0;
if timer=1 {if x<player.x{state="idle"; timer=0;}}
if timer=10 {instance_create(x+15,y+4,obj_gunshot_shot1);}
if timer=50 {instance_create(x+23,y+3,obj_gunshot_shot1);}
if timer=51 {state="idle"; timer=0;}
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
