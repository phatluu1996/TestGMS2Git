script_execute(EnemyWeaponsInit,0,0,0,0,0);
EnemySearchPlayer();

xx = sprite_width / 2;
yy = sprite_height/ 2;

sprite_set_offset(sprite_index,xx,yy);

if x > player.x { dir=point_direction(x-xx,y,player.x,player.y-15) }
if x < player.x { dir=point_direction(x+xx,y,player.x,player.y-15) }

