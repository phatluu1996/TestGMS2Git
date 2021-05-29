/// @description  Destroy Event Revised
xx = (sprite_width/2) // sprite center at x coordinate
yy = (sprite_height/2) // sprite center at y coordinate
instance_create(x,y+yy,objEnemyExpl0) // Explosion without a random bonus item

// Creates another instance of yourself in its initial coordinates.
instance_create(xstart,ystart,obj_bat_big)
// instance_create(x,y+yy,obj_lives) // Create the object live

