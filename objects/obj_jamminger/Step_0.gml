var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

EnemySearchPlayer(); // Search for the nearest player
EnemyDeath(); // When life decreases to 0 or less.
EnemyDamageEvent(); // Immunity time after taking damage.
EnemyImageScale(); // Flip the sprite according to the value of the variable "direccion".
EnemyStartAtack(); // Defines how far from the nearest player to start attacking.

if inActive=true{
if isAtk=true {

// Idle
if state="idle" {state="attack"}

// Advance on the player
if state="attack"
{
        timer=0;
            image_speed=0.4;
                if image_index>4 {image_index=0;}
                    move_towards_point(player.x,player.y,2.5)
                    
        if collision_rectangle(x-10,y-42,x+10,y-10,player,false,false){state="backOff"}
}

// Back off to the up
if state="backOff" 
{
    timer+=1;
        y=y-4;
            image_speed=0.4;
                if image_index>14 {image_index=0;}
        // 50% chance of resuming the attack
        if timer=30 {state=choose("backOff","attack"); timer=0;}
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
