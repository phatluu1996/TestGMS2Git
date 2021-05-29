script_execute(EnemyWeaponsInit,0,0,0,0,0);
chain = 0
chain_destroy = false;
chain_star = true;
chain_timer = 0;

if x < obj_sub_rt_55.x {image_xscale=-1; direccion="left";}
else
if x > obj_sub_rt_55.x {image_xscale=1; direccion="right";}

