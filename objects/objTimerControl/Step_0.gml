if seconds < 0 { seconds=0; }
if seconds == 0 { 
if instance_number(global.player1)=1 { global.player1_health=0; }
if instance_number(global.player2)=1 { global.player2_health=0; }
}

c_sec=floor(seconds/100) // hundreds of seconds
d_sec=floor((seconds-(c_sec*100))/10) // tened of seconds
u_sec=floor(seconds-(c_sec*100+d_sec*10)) // unit of seconds

