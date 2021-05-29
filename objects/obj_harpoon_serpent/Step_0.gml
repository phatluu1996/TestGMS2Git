var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

EnemySearchPlayer(); // Search for the nearest player
EnemyDeath(); // When life decreases to 0 or less.
EnemyDamageEvent(); // Immunity time after taking damage.

if inActive=true{
if isAtk=true {

// SPRITES
sprite_set_offset(sprite_index,40,40); 

timer+=1; 
// After moving to the left, it turns downward
if direccion="left_to_down" {sprite_index=spr_harpoon_serpent_LT_to_DN; 
if timer <= 5.5 {image_index=timer} else {image_index=6}
if timer=6 {x=x-11; y=y+14; } // Pixel correction between the current sprite and the next one
if timer=7 {direccion="down"; timer=0; }
}
// After moving down it turns to the left
if direccion="down_to_left" {sprite_index=spr_harpoon_serpent_DN_to_LT; 
if timer <= 5.5 {image_index=timer} else {image_index=6}
if timer=6 {x=x-14; y=y+11; } // Pixel correction between the current sprite and the next one
if timer=7 {direccion="left"; timer=0; }
}
// After moving up it turns to the left
if direccion="up_to_left" {sprite_index=spr_harpoon_serpent_UP_to_LT; 
if timer <= 5.5 {image_index=timer} else {image_index=6}
if timer=6 {x-=14; y-=11; } // Pixel correction between the current sprite and the next one
if timer=7 {direccion="left"; timer=0; }
}
// After moving to the left, turn upwards
if direccion="left_to_up" {sprite_index=spr_harpoon_serpent_LT_to_DN; 
if timer <= 5.5 {image_index=timer} else {image_index=6}
if timer=6 {x-=11; y-=14; } // Pixel correction between the current sprite and the next one
if timer=7 {direccion="up"; timer=0; }
}
// Moving to the up
if direccion="up" {sprite_index=spr_harpoon_serpent_UP; image_index=0; 
if timer=1 {y-=6; }
if timer=2 {y-=6; }
if timer=3 {direccion=choose("up","up_to_left"); timer=0; }
}
// Moving to the down
if direccion="down" {sprite_index=spr_harpoon_serpent_DN; image_index=0; 
if timer=1 {y+=6; }
if timer=2 {y+=6; }
if timer=3 {direccion=choose("down","down_to_left"); timer=0; }
}
// Moving to the left
if direccion="left" {sprite_index=spr_harpoon_serpent_LT; image_index=0; 
if timer=1 {x-=6; }
if timer=2 {x-=6; }
if timer=3 {x-=6; }
if timer=4 {x-=6; }
if timer=7 {direccion=choose("left_to_up","left","left_to_down"); timer=0; }
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
