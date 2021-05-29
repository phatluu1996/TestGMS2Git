inActive=true
strength=2
hp=3

bala = false
bala_left = false
bala_right = false
image_speed = 0.5

if objZeroBoss.direccion="left" {
hspeed = -11 ;bala_left = true
 }
 
 if objZeroBoss.direccion="right"  {x=x+12 sprite_index = zerob_shotA
 hspeed = 11;bala_right = true
 }

