action_move("000000010", 1);
inActive=true
strength=4
hp=4

bala = false
bala_left = false
bala_right = false
image_speed = 0.5

if objZeroBoss.direccion="left" {
hspeed = -10 ;bala_left = true
 }
 
 if objZeroBoss.direccion="right"  {x=x+12 sprite_index = zerob_shotB
 hspeed = 10;bala_right = true
 }

