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

if inActive=true{ EnemyGravity(); 
if isAtk=true { 

// thinking
if state="idle"{ timer+=1; sprite_index=spr_metcolo; image_speed=0.5; 
disH=abs(x-player.x)
if timer=think { 
    if player.x < x { direccion="left"; }else{ direccion="right" }
    if disH > 50 { state="walking"; timer=0; } // at medium or long distances it just walks
    else
    if disH < 50 { state="punch"; timer=0; } // at close range he punches the PLAYER
    }
 }
// walking
if state="walking"{ timer+=1; sprite_index=spr_metcolo_walking; image_speed=0; 
image_index=timer
if timer > 7 { timer=0; }
if timer > 0 { disH=abs(x-player.x)
if direccion="left"{ 
        if x < player.x { direccion="right"; }
        if disH > 50 { x=x-2 }
        if disH < 50 { state="idle"; timer=0; }
        }
if direccion="right"{ 
        if x > player.x { direccion="left"; }
        if disH > 50 { x=x+2 }
        if disH < 50 { state="idle"; timer=0; }
        }
    }
 }
// punch attack
if state="punch"{ timer+=1; sprite_index=spr_metcolo_atk; image_speed=0; 
image_index=timer; 
if timer >= 15 { state="idle"; timer=0; }
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
