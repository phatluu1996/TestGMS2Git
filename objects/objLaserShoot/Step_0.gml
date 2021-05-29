var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

think=30; // Time thinking before attacking again
EnemySearchPlayer(); // Search for the nearest player
EnemyDeath(); // When life decreases to 0 or less.
EnemyDamageEvent(); // Immunity time after taking damage.
EnemyImageScale(); // Flip the sprite according to the value of the variable "direccion".
EnemyStartAtack(); // Defines how far from the nearest player to start attacking.

if inActive=true{
if isAtk=true {
// Thinking
if state="idle" {
    timer+=1; 
        sprite_index=spr_laser_shooter; 
            image_speed=0;
                image_index=0;
                
    if timer < think {y=y+1; }
    if timer=think + think {state="run"; timer=0; }
}
// Run
if state="run" {
    timer=0; 
        sprite_index=spr_laser_shooter; 
            image_speed=0;
                image_index=0;
}}
// Shoot
if state="shoot" {
    timer+=1; 
        sprite_index=spr_laser_shooter; 
            image_speed=0.5; 
if timer=think {
                dir=point_direction(x,y,player.x,player.y)
                create_moving_instance(x,y,objLaserShootWeapon,dir,10)
                }
if timer=think+1 {state="run";}
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
