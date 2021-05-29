/// @description  Destroy Event Revised
xx = (sprite_width/2) // sprite center at x coordinate
yy = (sprite_height/2) // sprite center at y coordinate
instance_create(x+xx,y+yy,objEnemyExpl1) // Explosion with a random bonus item

if timer > think + 1 && timer < atk_end - 1 { with(newA) {instance_destroy();} }
if timer > think + 5 && timer < atk_end - 1 { with(newB) {instance_destroy();} }
if timer > think + 9 && timer < atk_end - 1 { with(newC) {instance_destroy();} }
if timer > think + 13 && timer < atk_end -1 { with(newD) {instance_destroy();} }

