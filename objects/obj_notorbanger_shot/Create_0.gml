script_execute(EnemyWeaponsInit,0,0,0,0,0);
r=instance_create(x,y,objSmoke);
r.sprite_index=humo_3;
r.image_speed=1;
xja = player.x
yja = player.y-330


action_set_vspeed(-11);
action_set_alarm(3, 0);
