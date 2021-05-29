if isAtk = true {timer+=1; if timer==10{change=true;}}
if change = true{
    if instance_number(objChillIce3) < 2 {instance_change(objChillIce3,true)}
    if instance_number(objChillIce3) = 2 {instance_destroy();}
    }
if destroy = true{instance_destroy();}

