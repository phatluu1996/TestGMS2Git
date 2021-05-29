script_execute(EnemyWeaponsInit,0,0,0,0,0);
if !place_free(x-5,y){hspeed = 3;vspeed = -3}
if !place_free(x+5,y){hspeed = -3;vspeed = -3}
if !place_free(x,y+5){hspeed = 3;vspeed = -3}

