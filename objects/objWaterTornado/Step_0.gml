/// @description  STEP EVENT
timer+=1;
while(timer<42){ i+=1;
    objTwist[i] = instance_create(x,y-(sprite_height*i),objTornadoParts);
    objTwist[i].image_index = image_index;
}
while(timer>70 and i>0){i-=1;
    objTwist[i].destroy=true;
}
if (timer>140 and i<1){timer=0;}

/*
spd = 3;
if isAtk=true { timer+=1
if timer == 1*spd { aa = instance_create(x,y-(sprite_height),objWaterTwister1)}
if timer == 2*spd { ab = instance_create(x,y-(sprite_height*2),objWaterTwister1)}
if timer == 3*spd { ac = instance_create(x,y-(sprite_height*3),objWaterTwister1)}
if timer == 4*spd { ad = instance_create(x,y-(sprite_height*4),objWaterTwister1)}
if timer == 7*spd { ae = instance_create(x,y-(sprite_height*5),objWaterTwister1)}
if timer == 8*spd { af = instance_create(x,y-(sprite_height*6),objWaterTwister1)}
if timer == 7*spd { ag = instance_create(x,y-(sprite_height*7),objWaterTwister1)}
if timer == 8*spd { ah = instance_create(x,y-(sprite_height*8),objWaterTwister1)}
if timer == 9*spd { ai = instance_create(x,y-(sprite_height*9),objWaterTwister1)}
if timer == 10*spd { aj = instance_create(x,y-(sprite_height*10),objWaterTwister1)}
if timer == 11*spd { ak = instance_create(x,y-(sprite_height*11),objWaterTwister1)}
if timer == 12*spd { al = instance_create(x,y-(sprite_height*12),objWaterTwister1)}
if timer == 13*spd { am = instance_create(x,y-(sprite_height*13),objWaterTwister1)}
if timer == 14*spd { an = instance_create(x,y-(sprite_height*14),objWaterTwister1)}
if timer == 15*spd { ao = instance_create(x,y-(sprite_height*15),objWaterTwister1)}
if timer == 16*spd { ap = instance_create(x,y-(sprite_height*16),objWaterTwister1)}
if timer == 17*spd { aq = instance_create(x,y-(sprite_height*17),objWaterTwister1)}
if timer == 18*spd { ar = instance_create(x,y-(sprite_height*18),objWaterTwister1)}
if timer == 19*spd { as = instance_create(x,y-(sprite_height*19),objWaterTwister1)}
if timer == 20*spd { at = instance_create(x,y-(sprite_height*20),objWaterTwister1)}
if timer == 21*spd { au = instance_create(x,y-(sprite_height*21),objWaterTwister1)}
if timer == 22*spd { ba = instance_create(x,y-(sprite_height*22),objWaterTwister1)}
if timer == 23*spd { bb = instance_create(x,y-(sprite_height*23),objWaterTwister1)}
if timer == 24*spd { bc = instance_create(x,y-(sprite_height*24),objWaterTwister1)}
if timer == 25*spd { bd = instance_create(x,y-(sprite_height*25),objWaterTwister1)}
if timer == 26*spd { be = instance_create(x,y-(sprite_height*26),objWaterTwister1)}
if timer == 27*spd { bf = instance_create(x,y-(sprite_height*27),objWaterTwister1)}
if timer == 28*spd { bg = instance_create(x,y-(sprite_height*28),objWaterTwister1)}
if timer == 29*spd { bh = instance_create(x,y-(sprite_height*29),objWaterTwister1)}
if timer == 30*spd { bi = instance_create(x,y-(sprite_height*30),objWaterTwister1)}
if timer == 31*spd { bj = instance_create(x,y-(sprite_height*31),objWaterTwister1)}
if timer == 32*spd { bk = instance_create(x,y-(sprite_height*32),objWaterTwister1)}
if timer == 33*spd { bl = instance_create(x,y-(sprite_height*33),objWaterTwister1)}
if timer == 34*spd { bm = instance_create(x,y-(sprite_height*34),objWaterTwister1)}
if timer == 35*spd { bn = instance_create(x,y-(sprite_height*35),objWaterTwister1)}
if timer == 36*spd { bo = instance_create(x,y-(sprite_height*36),objWaterTwister1)}
if timer == 37*spd { bp = instance_create(x,y-(sprite_height*37),objWaterTwister1)}
if timer == 38*spd { bq = instance_create(x,y-(sprite_height*38),objWaterTwister1)}
if timer == 39*spd { br = instance_create(x,y-(sprite_height*39),objWaterTwister1)}
if timer == 40*spd { bs = instance_create(x,y-(sprite_height*40),objWaterTwister1)}
if timer == 41*spd { bt = instance_create(x,y-(sprite_height*41),objWaterTwister1)}
if timer == 42*spd { bu = instance_create(x,y-(sprite_height*42),objWaterTwister1)}

if timer == 49*spd { bu.destroy=true;}
if timer == 50*spd { bt.destroy=true;}
if timer == 51*spd { bs.destroy=true;}
if timer == 52*spd { br.destroy=true;}
if timer == 53*spd { bq.destroy=true;}
if timer == 54*spd { bp.destroy=true;}
if timer == 55*spd { bo.destroy=true;}
if timer == 56*spd { bn.destroy=true;}
if timer == 57*spd { bm.destroy=true;}
if timer == 58*spd { bl.destroy=true;}
if timer == 59*spd { bk.destroy=true;}
if timer == 60*spd { bj.destroy=true;}
if timer == 61*spd { bi.destroy=true;}
if timer == 62*spd { bh.destroy=true;}
if timer == 63*spd { bg.destroy=true;}
if timer == 64*spd { bf.destroy=true;}
if timer == 65*spd { be.destroy=true;}
if timer == 66*spd { bd.destroy=true;}
if timer == 67*spd { bc.destroy=true;}
if timer == 68*spd { bb.destroy=true;}
if timer == 69*spd { ba.destroy=true;}
if timer == 70*spd { au.destroy=true;}
if timer == 71*spd { at.destroy=true;}
if timer == 72*spd { as.destroy=true;}
if timer == 73*spd { ar.destroy=true;}
if timer == 74*spd { aq.destroy=true;}
if timer == 75*spd { ap.destroy=true;}
if timer == 76*spd { ao.destroy=true;}
if timer == 77*spd { an.destroy=true;}
if timer == 78*spd { am.destroy=true;}
if timer == 79*spd { al.destroy=true;}
if timer == 80*spd { ak.destroy=true;}
if timer == 81*spd { aj.destroy=true;}
if timer == 82*spd { ai.destroy=true;}
if timer == 83*spd { ah.destroy=true;}
if timer == 84*spd { ag.destroy=true;}
if timer == 85*spd { af.destroy=true;}
if timer == 86*spd { ae.destroy=true;}
if timer == 87*spd { ad.destroy=true;}
if timer == 88*spd { ac.destroy=true;}
if timer == 89*spd { ab.destroy=true;}
if timer == 90*spd { aa.destroy=true;}
if timer == 91*spd { visible=false }
if timer == 100*spd {timer=0;}
}

/* */
/*  */
