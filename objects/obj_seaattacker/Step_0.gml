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

if inActive=true{
if isAtk=true {

ymax=70 + 56 // Ascent distance
xmax=100 // Horizontal distance

// Idle
if state="idle"{
if x > player.x {direccion="left"} else {direccion="right"}
state="goingUp"
}
// Going Up
if state="goingUp" { sprite_index=spr_seaattacker_moveUP; image_speed=0.5;
    if y > ystart - ymax {y-=4;}
    else
    if y<= ystart - ymax {y=ystart - ymax;}
    if y=ystart - ymax {state="stopped";}
    }
// Stopped 
if state="stopped" { sprite_index=spr_seaattacker; image_speed=0.1;
    x=xstart
    y=ystart - ymax;
    if image_index > 4 { state="sideways"; }
    }
// Movement sideways
if state="sideways" {sprite_index=spr_seaattacker_moveHori; image_speed=0.5;
if direccion="left" {
    if x > xstart - xmax {x-=4;}
    else
    if x<= xstart - xmax {x=xstart - xmax;}
    if x=xstart - xmax {state="movingDown";}
    }
if direccion="right" {
    if x<xstart + xmax {x+=4;}
    else
    if x >= xstart + xmax {x=xstart + xmax;}
    if x=xstart + xmax {state="movingDown";}
    }
}
// Moving down
if state="movingDown" {sprite_index=spr_seaattacker_moveDN; image_speed=0.5;
    if direccion="left" {image_xscale=1} else if direccion="right" {image_xscale=-1}
    if y<ystart {y+=4;}
    else
    if y >= ystart {y=ystart}
    if y=ystart {instance_destroy();}
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
