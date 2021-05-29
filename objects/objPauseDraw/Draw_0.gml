var __b__;
__b__ = action_if_variable(global.pause, true, 0);
if __b__
{
{
/// DRAWS SUBTANKS

// distancia entre os subtanks
SUBT_DIST = 24

// posicao do subtank 1
SUBT1X = global.startViewX + 177
SUBT1Y = global.startViewY + 82

// posicao do subtank 2
SUBT2X = SUBT1X
SUBT2Y = SUBT1Y + SUBT_DIST

// posicao do subtank 3
SUBT3X = SUBT1X + SUBT_DIST
SUBT3Y = SUBT1Y

// posicao do subtank 4
SUBT4X = SUBT3X
SUBT4Y = SUBT2Y

// posicao do subtank 5
SUBT5X = SUBT3X + SUBT_DIST
SUBT5Y = SUBT1Y

SUBT1ENER = global.subtank1_energy
SUBT2ENER = global.subtank2_energy
SUBT3ENER = global.subtank3_energy
SUBT4ENER = global.subtank4_energy
SUBT5ENER = global.subtank5_energy


/// SUBTANK 1
if global.subtanks >= 1 {
    if global.pauseSelectedFunction="subTank1" {draw_sprite(spr_tank_s,SUBT1ENER,SUBT1X,SUBT1Y)}
    else
    if global.pauseSelectedFunction!="subTank1" {draw_sprite(spr_tank,SUBT1ENER,SUBT1X,SUBT1Y)}
}

/// SUBTANK 2
if global.subtanks >= 2 {
    if global.pauseSelectedFunction="subTank2" {draw_sprite(spr_tank_s,SUBT2ENER,SUBT2X,SUBT2Y)}
    else
    if global.pauseSelectedFunction!="subTank2" {draw_sprite(spr_tank,SUBT2ENER,SUBT2X,SUBT2Y)}
}

/// SUBTANK 3
if global.subtanks >= 3 {
    if global.pauseSelectedFunction="subTank3" {draw_sprite(spr_tank_s,SUBT3ENER,SUBT3X,SUBT3Y)}
    else
    if global.pauseSelectedFunction!="subTank3" {draw_sprite(spr_tank,SUBT3ENER,SUBT3X,SUBT3Y)}
}

/// SUBTANK 4
if global.subtanks >= 4 {
    if global.pauseSelectedFunction="subTank4" {draw_sprite(spr_tank_s,SUBT4ENER,SUBT4X,SUBT4Y)}
    else
    if global.pauseSelectedFunction!="subTank4" {draw_sprite(spr_tank,SUBT4ENER,SUBT4X,SUBT4Y)}
}

/// SUBTANK 5
if global.subtanks >= 5 {
    if global.pauseSelectedFunction="subTank5" {draw_sprite(spr_tank_s,SUBT5ENER,SUBT5X,SUBT5Y)}
    else
    if global.pauseSelectedFunction!="subTank5" {draw_sprite(spr_tank,SUBT5ENER,SUBT5X,SUBT5Y)}
}



/// DRAWS WEAPONTANKS

// distancia entre os weaptanks
WEAPT_DIST = 24

// posicao do weaptank 1
WEAPT1X = global.startViewX + 129
WEAPT1Y = global.startViewY + 82

// posicao do weaptank 2
WEAPT2X = WEAPT1X
WEAPT2Y = WEAPT1Y + WEAPT_DIST

// posicao do weaptank 3
WEAPT3X = WEAPT1X + WEAPT_DIST
WEAPT3Y = WEAPT1Y

// posicao do weaptank 4
WEAPT4X = WEAPT3X
WEAPT4Y = WEAPT2Y

WEAPT1ENER = global.weapontank1_energy
WEAPT2ENER = global.weapontank2_energy
WEAPT3ENER = global.weapontank3_energy
WEAPT4ENER = global.weapontank4_energy


/// WEAPTANK 1
if global.weapontanks >= 1 {
    if global.pauseSelectedFunction="weapTank1" {draw_sprite(spr_wtank_s,WEAPT1ENER,WEAPT1X,WEAPT1Y)}
    else
    if global.pauseSelectedFunction!="weapTank1" {draw_sprite(spr_wtank,WEAPT1ENER,WEAPT1X,WEAPT1Y)}
}

/// WEAPTANK 2
if global.weapontanks >= 2 {
    if global.pauseSelectedFunction="weapTank2" {draw_sprite(spr_wtank_s,WEAPT2ENER,WEAPT2X,WEAPT2Y)}
    else
    if global.pauseSelectedFunction!="weapTank2" {draw_sprite(spr_wtank,WEAPT2ENER,WEAPT2X,WEAPT2Y)}
}

/// WEAPTANK 3
if global.weapontanks >= 3 {
    if global.pauseSelectedFunction="weapTank3" {draw_sprite(spr_wtank_s,WEAPT3ENER,WEAPT3X,WEAPT3Y)}
    else
    if global.pauseSelectedFunction!="weapTank3" {draw_sprite(spr_wtank,WEAPT3ENER,WEAPT3X,WEAPT3Y)}
}

/// WEAPTANK 4
if global.weapontanks >= 4 {
    if global.pauseSelectedFunction="weapTank4" {draw_sprite(spr_wtank_s,WEAPT4ENER,WEAPT4X,WEAPT4Y)}
    else
    if global.pauseSelectedFunction!="weapTank4" {draw_sprite(spr_wtank,WEAPT4ENER,WEAPT4X,WEAPT4Y)}
}

/// DRAW ICONES DOS PERSONAGENS DOS PLAYERS

ICON_DIST = 68

// posicao da vida do player 1 na tela
player1X = global.startViewX + 151
player1Y = global.startViewY + 59

// posicao da vida do player 2 na tela
player2X = player1X + ICON_DIST
player2Y = player1Y
        
// PERSONAGEM DO PLAYER 1
        draw_sprite(spr_chrs_img,global.play_chr,player1X,player1Y)
        
// PERSONAGEM DO PLAYER 2
        draw_sprite(spr_chrs_img,global.play_chr2,player2X,player2Y)


/// DRAW ICONES DE VIDAS

// posicao da vida do player 1 na tela
lives1X = global.startViewX + 173
lives1Y = global.startViewY + 48

// posicao da vida do player 2 na tela
lives2X = lives1X + ICON_DIST // ICON_DIST encontre o valor em DRAW ICONES DOS PERSONAGENS
lives2Y = lives1Y

        // vidas do player 1
        draw_sprite(sprNumbersBig,global.player1_lives,lives1X,lives1Y)
        
        // vidas do player 2
        draw_sprite(sprNumbersBig,global.player2_lives,lives2X,lives2Y)


/// DRAW ICONES DOS HEARTS
heartDIS = 16 // distancia entre cada heart (se ficar longe diminuir o valor)
heartX = global.startViewX + 128
heartY = global.startViewY + 150

if global.hearts = 1 {
draw_sprite(spr_item_heart,0,heartX,heartY) // heart tank 1
}
if global.hearts = 2 {
draw_sprite(spr_item_heart,0,heartX,heartY) // heart tank 1
draw_sprite(spr_item_heart,0,heartX+(heartDIS*1),heartY) // heart tank 2
}
if global.hearts = 3 {
draw_sprite(spr_item_heart,0,heartX,heartY) // heart tank 1
draw_sprite(spr_item_heart,0,heartX+(DD*1),heartY) // heart tank 2
draw_sprite(spr_item_heart,0,heartX+(heartDIS*2),heartY) // heart tank 3
}
if global.hearts = 4 {
draw_sprite(spr_item_heart,0,heartX,heartY) // heart tank 1
draw_sprite(spr_item_heart,0,heartX+(heartDIS*1),heartY) // heart tank 2
draw_sprite(spr_item_heart,0,heartX+(heartDIS*2),heartY) // heart tank 3
draw_sprite(spr_item_heart,0,heartX+(heartDIS*3),heartY) // heart tank 4
}
if global.hearts = 5 {
draw_sprite(spr_item_heart,0,heartX,heartY) // heart tank 1
draw_sprite(spr_item_heart,0,heartX+(heartDIS*1),heartY) // heart tank 2
draw_sprite(spr_item_heart,0,heartX+(heartDIS*2),heartY) // heart tank 3
draw_sprite(spr_item_heart,0,heartX+(heartDIS*3),heartY) // heart tank 4
draw_sprite(spr_item_heart,0,heartX+(heartDIS*4),heartY) // heart tank 5
}
if global.hearts = 6 {
draw_sprite(spr_item_heart,0,heartX,heartY) // heart tank 1
draw_sprite(spr_item_heart,0,heartX+(heartDIS*1),heartY) // heart tank 2
draw_sprite(spr_item_heart,0,heartX+(heartDIS*2),heartY) // heart tank 3
draw_sprite(spr_item_heart,0,heartX+(heartDIS*3),heartY) // heart tank 4
draw_sprite(spr_item_heart,0,heartX+(heartDIS*4),heartY) // heart tank 5
draw_sprite(spr_item_heart,0,heartX+(heartDIS*5),heartY) // heart tank 6
}
if global.hearts = 7 {
draw_sprite(spr_item_heart,0,heartX,heartY) // heart tank 1
draw_sprite(spr_item_heart,0,heartX+(heartDIS*1),heartY) // heart tank 2
draw_sprite(spr_item_heart,0,heartX+(heartDIS*2),heartY) // heart tank 3
draw_sprite(spr_item_heart,0,heartX+(heartDIS*3),heartY) // heart tank 4
draw_sprite(spr_item_heart,0,heartX+(heartDIS*4),heartY) // heart tank 5
draw_sprite(spr_item_heart,0,heartX+(heartDIS*5),heartY) // heart tank 6
draw_sprite(spr_item_heart,0,heartX+(heartDIS*6),heartY) // heart tank 7
}
if global.hearts = 8 {
draw_sprite(spr_item_heart,0,heartX,heartY) // heart tank 1
draw_sprite(spr_item_heart,0,heartX+(heartDIS*1),heartY) // heart tank 2
draw_sprite(spr_item_heart,0,heartX+(heartDIS*2),heartY) // heart tank 3
draw_sprite(spr_item_heart,0,heartX+(heartDIS*3),heartY) // heart tank 4
draw_sprite(spr_item_heart,0,heartX+(heartDIS*4),heartY) // heart tank 5
draw_sprite(spr_item_heart,0,heartX+(heartDIS*5),heartY) // heart tank 6
draw_sprite(spr_item_heart,0,heartX+(heartDIS*6),heartY) // heart tank 7
draw_sprite(spr_item_heart,0,heartX+(heartDIS*7),heartY) // heart tank 8
}

/// DRAW BARRAS DE PODER

DIS = 20 // distancia entre um objeto e outro
POSX = __view_get( e__VW.XView, 0 ) + 27 // posicao horizontal da primeira barra
POSY = __view_get( e__VW.YView, 0 ) + 19 // posicao vertical da primeira barra

VIDA = global.player1_health
PODER_1 = global.weapon1_energy
PODER_2 = global.weapon2_energy
PODER_3 = global.weapon3_energy
PODER_4 = global.weapon4_energy
PODER_5 = global.weapon5_energy
PODER_6 = global.weapon6_energy
PODER_7 = global.weapon7_energy
PODER_8 = global.weapon8_energy


/// BARRA DE VIDA

if global.hearts=0 {spriteENERGY = men_energy0}
if global.hearts=1 {spriteENERGY = men_energy1}
if global.hearts=2 {spriteENERGY = men_energy2}
if global.hearts=3 {spriteENERGY = men_energy3}
if global.hearts=4 {spriteENERGY = men_energy4}
if global.hearts=5 {spriteENERGY = men_energy5}
if global.hearts=6 {spriteENERGY = men_energy6}
if global.hearts=7 {spriteENERGY = men_energy7}
if global.hearts=8 {spriteENERGY = men_energy8}

        draw_sprite(spriteENERGY,VIDA,POSX,POSY)

if global.stageclear1=true {draw_sprite(men_energy6,PODER_1,POSX,POSY+(DIS*1));}
if global.stageclear2=true {draw_sprite(men_energy6,PODER_2,POSX,POSY+(DIS*2));}
if global.stageclear3=true {draw_sprite(men_energy6,PODER_3,POSX,POSY+(DIS*3));}
if global.stageclear4=true {draw_sprite(men_energy6,PODER_4,POSX,POSY+(DIS*4));}
if global.stageclear5=true {draw_sprite(men_energy6,PODER_5,POSX,POSY+(DIS*5));}
if global.stageclear6=true {draw_sprite(men_energy6,PODER_6,POSX,POSY+(DIS*6));}
if global.stageclear7=true {draw_sprite(men_energy6,PODER_7,POSX,POSY+(DIS*7));}
if global.stageclear8=true {draw_sprite(men_energy6,PODER_8,POSX,POSY+(DIS*8));}


/// DRAW NOMES DOS PODERES

NOMESX = global.startViewX + 9
NOMESY = global.startViewY + 10
nomesDIS = 20


if global.pauseSelectedFunction!="x-buster"{draw_sprite(spr_xbuster,0,NOMESX,NOMESY)}
else 
if global.pauseSelectedFunction ="x-buster"{draw_sprite(spr_xbuster,1,NOMESX,NOMESY)}
// PODER 1
if global.stageclear1=true {
if global.pauseSelectedFunction!="weapon1"{draw_sprite(spr_wp_1,0,NOMESX,NOMESY+(nomesDIS*1))}
else 
if global.pauseSelectedFunction ="weapon1"{draw_sprite(spr_wp_1,1,NOMESX,NOMESY+(nomesDIS*1))}}
// PODER 2
if global.stageclear2=true {
if global.pauseSelectedFunction!="weapon2"{draw_sprite(spr_wp_2,0,NOMESX,NOMESY+(nomesDIS*2))}
else 
if global.pauseSelectedFunction ="weapon1"{draw_sprite(spr_wp_2,1,NOMESX,NOMESY+(nomesDIS*2))}}
// PODER 3
if global.stageclear3=true {
if global.pauseSelectedFunction!="weapon3"{draw_sprite(spr_wp_3,0,NOMESX,NOMESY+(nomesDIS*3))}
else 
if global.pauseSelectedFunction ="weapon1"{draw_sprite(spr_wp_3,1,NOMESX,NOMESY+(nomesDIS*3))}}
// PODER 4
if global.stageclear4=true {
if global.pauseSelectedFunction!="weapon4"{draw_sprite(spr_wp_4,0,NOMESX,NOMESY+(nomesDIS*4))}
else 
if global.pauseSelectedFunction ="weapon1"{draw_sprite(spr_wp_4,1,NOMESX,NOMESY+(nomesDIS*4))}}
// PODER 5
if global.stageclear5=true {
if global.pauseSelectedFunction!="weapon5"{draw_sprite(spr_wp_5,0,NOMESX,NOMESY+(nomesDIS*5))}
else 
if global.pauseSelectedFunction ="weapon1"{draw_sprite(spr_wp_5,1,NOMESX,NOMESY+(nomesDIS*5))}}
// PODER 6
if global.stageclear6=true {
if global.pauseSelectedFunction!="weapon6"{draw_sprite(spr_wp_6,0,NOMESX,NOMESY+(nomesDIS*6))}
else 
if global.pauseSelectedFunction ="weapon6"{draw_sprite(spr_wp_6,1,NOMESX,NOMESY+(nomesDIS*6))}}

// PODER 7
if global.stageclear7=true {
if global.pauseSelectedFunction!="weapon7"{draw_sprite(spr_wp_7,0,NOMESX,NOMESY+(nomesDIS*7))}
else 
if global.pauseSelectedFunction ="weapon7"{draw_sprite(spr_wp_7,1,NOMESX,NOMESY+(nomesDIS*7))}}

// PODER 8
if global.stageclear8=true {
if global.pauseSelectedFunction!="weapon8"{draw_sprite(spr_wp_8,0,NOMESX,NOMESY+(nomesDIS*8))}
else 
if global.pauseSelectedFunction ="weapon8"{draw_sprite(spr_wp_8,1,NOMESX,NOMESY+(nomesDIS*8))}}

// EXIT OPTION;
if global.pauseSelectedFunction!="exit"{draw_sprite(spr_exit,0,NOMESX,NOMESY+(nomesDIS*9))}
else 
if global.pauseSelectedFunction ="exit"{draw_sprite(spr_exit,1,NOMESX,NOMESY+(nomesDIS*9))}



/// DRAW ICONES DE RIDES ARMORS

rideDIST = 23
rideStartX = global.startViewX + 214
rideStartY = global.startViewY + 180

if global.pause = true 
{
    
    if global.rideN = true {
        draw_sprite(spr_ride_n,0,rideStartX,rideStartY)
        } // ride N = true
        
    if global.rideK = true {
        draw_sprite(spr_ride_k,0,rideStartX+rideDIST,rideStartY)
        } // ride K = true
        
    if global.rideH = true {
        draw_sprite(spr_ride_h,0,rideStartX,rideStartY+rideDIST)
        } // ride H = true
        
    if global.rideF = true {
        draw_sprite(spr_ride_f,0,rideStartX+rideDIST,rideStartY+rideDIST)
        } // ride F = true
        
}


}
}
