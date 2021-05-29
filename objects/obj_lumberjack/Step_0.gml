var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

think=20; // Time thinking before attacking again
EnemySearchPlayer(); // Search for the nearest player
EnemyDeath(); // When life decreases to 0 or less.
EnemyDamageEvent(); // Immunity time after taking damage.
EnemyImageScale(); // Flip the sprite according to the value of the variable "direccion".
EnemyStartAtack(); // Defines how far from the nearest player to start attacking.

if inActive=true and isAtk=true {timer+=1;
EnemyOutside();
image_speed=0.5;

if state="idle" {
    sprite_index=spr_lumberjack;
        if timer <= think {image_index=0}
        if timer=think {state="attack"; timer=0;;}
}
// Whirl and shoot
if state="attack" {
    sprite_index=spr_lumberjack_atk;
        image_speed=0.5;
            if image_index > image_number-1 {
                create_moving_instance(x+2,y+34,obj_lumberjack_disc,180,7)
                state="laughing"; timer=0;
                }
}
// Laughing
if state="laughing" {
    sprite_index=spr_lumberjack_risada;
        image_speed=0.5;
            if image_index > image_number-1 {state="idle"; timer=0;}
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
