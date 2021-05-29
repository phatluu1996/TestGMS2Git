var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

think=4; // Time thinking before attacking again
EnemySearchPlayer(); // Search for the nearest player
EnemyDeath(); // When life decreases to 0 or less.
EnemyDamageEvent(); // Immunity time after taking damage.
EnemyImageScale(); // Flip the sprite according to the value of the variable "direccion".
EnemyStartAtack(); // Defines how far from the nearest player to start attacking.

if inActive=true { 
if isAtk=true { 

if state="idle" { timer+=1; sprite_index=spr_skyclaw; image_speed=0.5
if timer=think { state="moveHori"; timer=0; }
 }
// Movement Horizontal
if state="moveHori" { timer+=1; sprite_index=spr_skyclaw; image_speed=0.5
// Condition to advancing in the player
if distance_to_object(player) < 50 { if y < player.y { state="AdvanceInPlayer"; timer=0; }}
// Predetermined Horizontal Movement
if timer < 90 { scrHorMovement(150,2); }
// Come Back
if timer=90 { EnemyFlip(); }
}
/// Attack on the player
if state="AdvanceInPlayer" { timer+=1; sprite_index=spr_skyclaw_atk0; image_speed=0.5; 
if timer=1 { xja=player.x; yja=player.y-24 }
if timer > 1 { move_towards_point(xja,yja,2); if distance_to_object(player)<5 { player.Freeze=true; timer=25; }}
// Collision with player
if y=yja { if player.Freeze=true { state="dragging"; timer=0; } else { state="return"; timer=0; }}
if timer=25 { if player.Freeze=true { state="dragging"; timer=0; } else { state="return"; timer=0; direccion="left"; }}
}
// Movement dragging the player
if state="dragging" { timer+=1; sprite_index=spr_skyclaw_atk1; image_speed=0.5
// Defining where to dragging the player
if timer=1 { xja=xstart+100; yja=ystart; }
// Dragging the player
if timer > 1 { move_towards_point(xja,yja,4); player.x=x; player.y=y+40; }
// Stop dragging the player and blowing up
if timer=25 { player.Freeze=false; instance_destroy(); }
}
// After the onslaught on the player it goes back to the original position
if state="return" { timer+=1; sprite_index=spr_skyclaw; image_speed=0.5; 
// Defining where to return
if timer=1 { xja=xstart; yja=ystart; }
// Come back
if timer > 1 { move_towards_point(xja,yja,4); }
// Stop onslaught on player and return to the starting position
if timer=25 { speed=0; state="idle"; timer=0; direccion="left"; }
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
