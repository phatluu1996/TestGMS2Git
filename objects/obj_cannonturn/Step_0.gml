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
    image_speed=0.1;
        if image_index > 3 {image_index=0}
            if timer=think {state=choose("shootHori","shootVert"); timer=0;}
}
// Shoot Horizontally
if state="shootHori" {
    image_index=0; 
        image_speed=0
            create_moving_instance(x+20,y+9,obj_cannonturn_shot,0,10);
            create_moving_instance(x-20,y+9,obj_cannonturn_shot,180,10);
                state="idle"
}
// Shoot Vertically
if state="shootVert" {image_index=2;
    image_index=0; 
        image_speed=0
            create_moving_instance(x+14,y-2,obj_cannonturn_shot,45,10);
            create_moving_instance(x-14,y-2,obj_cannonturn_shot,125,10);
                state="idle"
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
