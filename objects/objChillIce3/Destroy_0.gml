/// @description  CRIA AS PEDRAS DE GELO
// pedra de gelo 1
a=instance_create(x,y,obj_penguin_pedras);
a.direction=45+random(45)
a.sprite_index=spr_chill_penguim_gelo1;
a.image_index=0;
// pedra de gelo 2
b=instance_create(x,y,obj_penguin_pedras);
b.direction=0+random(45)
b.sprite_index=spr_chill_penguim_gelo1;
b.image_index=1;
// pedra de gelo 3
c=instance_create(x,y,obj_penguin_pedras);
c.direction=90+random(45)
c.sprite_index=spr_chill_penguim_gelo1;
c.image_index=0;
// pedra de gelo 4
d=instance_create(x,y,obj_penguin_pedras);
d.direction=135+random(45)
d.sprite_index=spr_chill_penguim_gelo1;
d.image_index=1;

