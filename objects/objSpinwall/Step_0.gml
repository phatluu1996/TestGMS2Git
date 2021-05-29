var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

think=140; // Time thinking before attacking again
EnemySearchPlayer(); // Search for the nearest player
EnemyDeath(); // When life decreases to 0 or less.
EnemyDamageEvent(); // Immunity time after taking damage.

if inActive=true and isAtk=true {timer +=1;
EnemyOutside();

window_set_caption(state)

switch(spinWall)
{
    case "up":   {image_yscale=-1;} ;break
    case "down": {image_yscale= 1;} ;break
}

// Idle
if state="idle" {
    sprite_index = sprSpinWallGrowing;
    if timer<think {image_index=0} else {state="growing"; timer=0;}
}
// Growing
if state="growing" {
    sprite_index = sprSpinWallGrowing;
        image_speed=0.5;
    if image_index > image_number-1 {state="full"; timer=0;}
}
if state="full"{timer=0;
    sprite_index = sprSpinWallFull;
        image_speed=0;
            image_index=0;
if instance_number(objSpinWallSolid) == 0 { instance_create(x,y,objSpinWallSolid);}
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
