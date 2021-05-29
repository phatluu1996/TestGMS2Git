var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{


if chain_star == true {chain_timer +=1}



if chain_timer > 0 &&  chain_timer < 25 { move_towards_point(xja+100,yja,5)}

//if chain_timer > 2 &&  chain_timer < 30 {move_towards_point(mira.x-30,mira.y-30,5) }
if chain_timer > 25 &&  chain_timer < 30  {hspeed = 0;vspeed = 0}
if chain_timer > 30 &&  chain_timer < 55  {chain_destroy = true;move_towards_point(xstart,ystart,5)}
if chain_timer > 55   {instance_destroy();chain_star = false;chain_timer =0}


chain+=1

if chain == 3 {instance_create(x,y,obj_knightman_chain)}
if chain == 8 {instance_create(x,y,obj_knightman_chain)}
if chain == 13 {instance_create(x,y,obj_knightman_chain)}
if chain == 18 {instance_create(x,y,obj_knightman_chain)}
if chain == 23 {instance_create(x,y,obj_knightman_chain)}

}
}
else
{
{
gravity = 0
hspeed = 0
vspeed = 0
image_index = image_index
image_speed = 0



}
}
