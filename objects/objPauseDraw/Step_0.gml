/// @description  ATIVIDADES DE TODOS OS SUBTANKS
/*

/// ATIVIDADE DO SUBTANK 1

if global.subtank1=true {temporizadorT +=1

    if temporizadorT==1 && global.subtank1_energy==7
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank1_energy-=1;}
    if temporizadorT==3 && global.subtank1_energy==6
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank1_energy-=1;}
    if temporizadorT==5 && global.subtank1_energy==5
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank1_energy-=1;}
    if temporizadorT==7 && global.subtank1_energy==4
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank1_energy-=1;}
    if temporizadorT==9 && global.subtank1_energy==3
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank1_energy-=1;}
    if temporizadorT==11 && global.subtank1_energy==2
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank1_energy-=1;}
    if temporizadorT==13 && global.subtank1_energy==1
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank1_energy-=1; global.subtank1=false temporizadorT=0;}
        
} // aqui termina a atividade do subtank 1

/// ATIVIDADE DO SUBTANK 2

if global.subtank2=true {temporizadorT +=1

    if temporizadorT==1 && global.subtank2_energy==7
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank2_energy-=1;}
    if temporizadorT==3 && global.subtank2_energy==6
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank2_energy-=1;}
    if temporizadorT==5 && global.subtank2_energy==5
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank2_energy-=1;}
    if temporizadorT==7 && global.subtank2_energy==4
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank2_energy-=1;}
    if temporizadorT==9 && global.subtank2_energy==3
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank2_energy-=1;}
    if temporizadorT==11 && global.subtank2_energy==2
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank2_energy-=1;}
    if temporizadorT==13 && global.subtank2_energy==1
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank2_energy-=1; global.subtank2=false temporizadorT=0;}
        
} // aqui termina a atividade do subtank 2

/// ATIVIDADE DO SUBTANK 3

if global.subtank3=true {temporizadorT +=1

    if temporizadorT==1 && global.subtank3_energy==7
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank3_energy-=1;}
    if temporizadorT==3 && global.subtank3_energy==6
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank3_energy-=1;}
    if temporizadorT==5 && global.subtank3_energy==5
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank3_energy-=1;}
    if temporizadorT==7 && global.subtank3_energy==4
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank3_energy-=1;}
    if temporizadorT==9 && global.subtank3_energy==3
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank3_energy-=1;}
    if temporizadorT==11 && global.subtank3_energy==2
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank3_energy-=1;}
    if temporizadorT==13 && global.subtank3_energy==1
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank3_energy-=1; global.subtank3=false temporizadorT=0;}
        
} // aqui termina a atividade do subtank 3

/// ATIVIDADE DO SUBTANK 4

if global.subtank4=true {temporizadorT +=1

    if temporizadorT==1 && global.subtank4_energy==7
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank4_energy-=1;}
    if temporizadorT==3 && global.subtank4_energy==6
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank4_energy-=1;}
    if temporizadorT==5 && global.subtank4_energy==5
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank4_energy-=1;}
    if temporizadorT==7 && global.subtank4_energy==4
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank4_energy-=1;}
    if temporizadorT==9 && global.subtank4_energy==3
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank4_energy-=1;}
    if temporizadorT==11 && global.subtank4_energy==2
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank4_energy-=1;}
    if temporizadorT==13 && global.subtank4_energy==1
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank4_energy-=1; global.subtank4=false temporizadorT=0;}
        
} // aqui termina a atividade do subtank 4

/// ATIVIDADE DO SUBTANK 5

if global.subtank5=true {temporizadorT +=1

    if temporizadorT==1 && global.subtank5_energy==7
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank5_energy-=1;}
    if temporizadorT==3 && global.subtank5_energy==6
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank5_energy-=1;}
    if temporizadorT==5 && global.subtank5_energy==5
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank5_energy-=1;}
    if temporizadorT==7 && global.subtank5_energy==4
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank5_energy-=1;}
    if temporizadorT==9 && global.subtank5_energy==3
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank5_energy-=1;}
    if temporizadorT==11 && global.subtank5_energy==2
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank5_energy-=1;}
    if temporizadorT==13 && global.subtank5_energy==1
        {global.player1_health+=2; global.player2_health+=2; sound_play(snd_energy); global.subtank5_energy-=1; global.subtank5=false temporizadorT=0;}
        
} // aqui termina a atividade do subtank 5


/* */
/// ATIVIDADE DO WEAPONTANK 1
/*
if global.wTank1=true {temporizadorT +=1

    if temporizadorT==1 && global.weapontank1_energy==7
        {scr_weapontanks(1);}
    if temporizadorT==3 && global.weapontank1_energy==6
        {scr_weapontanks(1);}
    if temporizadorT==5 && global.weapontank1_energy==5
        {scr_weapontanks(1);}
    if temporizadorT==7 && global.weapontank1_energy==4
        {scr_weapontanks(1);}
    if temporizadorT==9 && global.weapontank1_energy==3
        {scr_weapontanks(1);}
    if temporizadorT==11 && global.weapontank1_energy==2
        {scr_weapontanks(1);}
    if temporizadorT==13 && global.weapontank1_energy==1
        {scr_weapontanks(1);}
    
} // aqui termina a atividade do weaptank


/* */
/// VISIVEL
if global.pause = true {visible=true}
else
if global.pause = false{visible=false}

/* */
/*  */
