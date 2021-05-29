script_execute(EnemyWeaponsInit,0,0,0,0,0);
image_speed = 0.4

xja = player.x
yja = player.y-330

if player.x < x {image_index=5}else if player.x > x {image_index=3}


action_set_vspeed(-11);
action_set_alarm(3, 0);
