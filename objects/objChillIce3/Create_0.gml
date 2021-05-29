script_execute(EnemyWeaponsInit,0,0,0,0,0);
image_speed=0.5;
timer=0;
hp=5;
alpha=false;
canMove=false; // change vspeed de acordo com o lado do player (a neve tem que ser de acordo tambem)
if place_free(x,y+3){y=y+3;}

if instance_number(objChillIce3) = 2 {
        if objChillPenguin.image_xscale = 1 {x=x-35}
        if objChillPenguin.image_xscale =-1 {x=x+35}
}
image_xscale=objChillPenguin.image_xscale

