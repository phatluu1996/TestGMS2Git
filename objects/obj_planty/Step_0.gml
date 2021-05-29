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

if inActive=true and isAtk=true {timer+=1;
EnemyOutside();

// Thinking
if state="idle" {sprite_index=spr_planty; image_index=0; 
if timer = think {state=choose("idle","iworm"); timer=0;}
}
// Jump
if state="jump"{
    sprite_index=spr_planty; 
        image_speed=0.5
            if image_index < image_number-1 {vspeed=-3; x=x+image_xscale;}
            if image_index > image_number-1 {vspeed=3; state="falling"}
}
// Jump + Create the enemy Iworm
if state="iworm"{
    sprite_index=spr_planty_iworm;
        image_speed=0.5
            if image_index < image_number-1 {vspeed=-3; x=x+image_xscale;}
            if image_index > image_number-1 {vspeed=0;
            objIworm=instance_create(x+(8*image_xscale),y-21,obj_falling_iworm);
            objIworm.image_xscale=image_xscale; state="falling"}
}
if state="falling"{
    EnemyGravity();
        sprite_index=spr_planty; 
            image_speed=0
                image_index=7
                    if place_meeting(x,y+1,objPrtSolid) {state="idle"}
        
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
