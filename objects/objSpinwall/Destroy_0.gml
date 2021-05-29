/// @description  Destroy Event Revised
switch (spinWall)
{
case "up": {
xx = (sprite_width/2) // sprite center at x coordinate
yy = (sprite_height/2) // sprite center at y coordinate
instance_create(x+xx,y+25,objEnemyExpl1) // Explosion with a random bonus item
if image_index > 4 {instance_create(x+xx,y+50,objEnemyExpl0)} // Explosion without a random bonus item
if image_index > 8 {instance_create(x+xx,y+75,objEnemyExpl0)} // Explosion without a random bonus item
};break;
case "down":{
xx = (sprite_width/2) // sprite center at x coordinate
yy = (sprite_height/2) // sprite center at y coordinate
instance_create(x+xx,y+75,objEnemyExpl1) // Explosion with a random bonus item
if image_index > 4 {instance_create(x+xx,y+50,objEnemyExpl0)} // Explosion without a random bonus item
if image_index > 8 {instance_create(x+xx,y+25,objEnemyExpl0)} // Explosion without a random bonus item
};break;
}

if instance_number(objSpinWallSolid) == 1 { with objSpinWallSolid {instance_destroy();}}

// Creates another instance of yourself in its initial coordinates.
instance_create(xstart,ystart,objSpinwall)


