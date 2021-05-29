var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

think=100; // Time thinking before attacking again
EnemySearchPlayer(); // Search for the nearest player
EnemyDeath(); // When life decreases to 0 or less.
EnemyDamageEvent(); // Immunity time after taking damage.
EnemyImageScale(); // Flip the sprite according to the value of the variable "direccion".
EnemyStartAtack(); // Defines how far from the nearest player to start attacking.

if inActive = true and isAtk = true {
EnemyOutside();

// Thinking
if state="idle" {
    timer+=1;
        sprite_index=spr_bombbeen; 
            image_speed=0.1;
                if timer > 1 {state="moveHori"; timer=0;}
}
// Movement Horizontally
if state="moveHori" {
    timer+=1;
        sprite_index=spr_bombbeen; 
            image_speed=0.1;
                scrHorMovement(150,2)
        if timer >= think  {
            if direccion="left" {if x > player.x {state="throwBomb"; timer=0;}}
            if direccion="right"{if x < player.x {state="throwBomb"; timer=0;}}
            }
}
// Throw bomb at the player
if state="throwBomb" { timer=0;
        sprite_index=spr_bombbeen_atk;
            image_speed=0.2;
                if image_index > image_number - 1 
                {
                    dir = point_direction(x,y,player.x,player.y)
                    if direccion="right"{create_moving_instance(x+5,y-3,obj_bombbeen_shot,dir,2); state="idle"; }
                    if direccion="left" {create_moving_instance(x-5,y-3,obj_bombbeen_shot,dir,2); state="idle"; }
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
