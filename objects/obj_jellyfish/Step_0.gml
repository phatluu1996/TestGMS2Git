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

if inActive=true and isAtk=true {
EnemyOutside();
// Idle
if state="idle" {
    if timer=think {
        state="attack"
    }
}
// Advance on the nearest player
if state="atack" {
if timer<=10 {
        if collision_rectangle(x-25,y-35,x+25,y-7,player,false,false) {state="electricShock"; timer=0;}}
if image_index>=5.5 {image_index=3}
if timer>=10 && timer<=20 { image_speed=0; vspeed=0.5;}
if timer>=21 {image_speed=0.3; move_towards_point(player.x,player.y,2)}
if timer>=41 {timer=0;}
}
// Create a Electric Shock after attack the player
if state="electricShock" {
if timer=1 {image_index=1}
if timer>=2 && elec_t<=49{image_speed=0.5;if image_index>=3 {image_index=1}}
if timer=56 {state="idle"; timer=0;}
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
