EnemySearchPlayer();

if isAtk=true {
        timer+=1;
            image_speed=1;
    if timer=30 {isAtk=false;}
}
if isAtk=false {image_speed=0.1}

/// check if was collision with nearest player
xx=sprite_width/2
yy=sprite_height
if collision_rectangle(x-xx,y,x+xx,y+yy,player,false,false)
{inActive=true;}
else
{inActive=false;}


if inActive=true && isAtk = true{alarm[0]=1;}



