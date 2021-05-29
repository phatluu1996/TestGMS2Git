if !place_free(x,y+10){
instance_create(x,y,est_acid)
}
else
{

if !place_free(x-5,y){ball = instance_create(x,y,est_acid1)
ball.image_xscale = -1}
else
{
if !place_free(x+5,y){instance_create(x,y,est_acid1)}
}



}


