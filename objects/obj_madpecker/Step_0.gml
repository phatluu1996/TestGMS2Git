var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

think = 50; // Time thinking before attacking again
EnemySearchPlayer(); // Search for the nearest player
EnemyDeath(); // When life decreases to 0 or less.
EnemyDamageEvent(); // Immunity time after taking damage.
EnemyStartAtack(); // Defines how far from the nearest player to start attacking.

if inActive=true and isAtk=true { timer+=1;
EnemyOutside();
// Idle
if state="idle" {
        sprite_index=spr_madpecker;
            image_speed=0.5;
    if timer >= 50 
    {
        state="egg"
    }
}
// Creating the egg
if state="egg" {
    sprite_index=spr_madpecker_atk;
            image_speed=0.5;
                if image_index > image_number-1 
                {
                    instance_create(x-18,y-28,obj_eggcreeper); 
                    state="idle"
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
