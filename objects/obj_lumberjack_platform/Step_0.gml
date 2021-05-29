timer+=1;

if timer == 30 or timer == 45{
    if instance_number(lumber_disc1)=0 {instance_create(x+2,y+34,lumber_disc1)} else 
    if instance_number(lumber_disc1)=1 {
    if instance_number(lumber_disc2)=0 {instance_create(x+2,y+18,lumber_disc2)}
    }
}
if timer >= 60 {timer=0}


