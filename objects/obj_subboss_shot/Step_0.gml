var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
standTIMER = 90 // tempo que ele ficara parado na parede

if chain_star == true {chain_timer +=1
}

// avanca em direcao do player
if chain_timer == 1 { image_speed=0.2
    if direccion="right" {direction=0;speed=8} 
    else 
    if direccion="left" {direction=180;speed=8} 
    }

if chain_timer > 200 {image_speed=0;image_index=0;} // ele para de rodar ao tocar na parede

// retornar para a mao dele
if chain_timer >= 200 + standTIMER  {chain_destroy = true; destroy = true;
    if direccion="right" {direction=180;speed=6} 
    else 
    if direccion="left" {direction=0;speed=6} 
    }


chain+=1
if chain == 1 {instance_create(x,y,obj_subboss_chain)}
if chain == 3 {instance_create(x,y,obj_subboss_chain)}
if chain == 5 {instance_create(x,y,obj_subboss_chain)}
if chain == 7 {instance_create(x,y,obj_subboss_chain)}
if chain == 9 {instance_create(x,y,obj_subboss_chain)}
if chain == 11 {instance_create(x,y,obj_subboss_chain)}
if chain == 13 {instance_create(x,y,obj_subboss_chain)}
if chain == 15 {instance_create(x,y,obj_subboss_chain)}
if chain == 17 {instance_create(x,y,obj_subboss_chain)}


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
