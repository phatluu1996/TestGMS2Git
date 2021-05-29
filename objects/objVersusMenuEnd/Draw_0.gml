/// @description  MENU FIM DE LUTA / WINNER TEXT

transition_kind=21
transition_steps=20

xx = __view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)
yy = __view_get( e__VW.YView, 0 )+(__view_get( e__VW.HView, 0 )/2)
dis = 12
y1 = yy - dis
y2 = yy
y3 = yy + dis

/*

// VITORIA ===================================================================================
if global.player1_health>=1 
{ draw_fnt(xx-32,yy-(dis*3),"PLAYER 1 WINS",font_gold) } else { draw_fnt(xx-32,yy-48,"PLAYER 2 WINS",font_gold) }
/// VITORIA PERFEITA ==========================================================================
if global.player1_health=28 or global.player2_health=28
{ draw_fnt(xx-32,yy-(dis*2),"PERFECT",font_gold) }
/// OPCOES ====================================================================================

switch (selected)
{
case 0: // Quando nenhum foi selecionado ( Tecla enter nao foi pressionada )
{
switch (c_sel)
{
case 1:
    draw_fnt(xx-64,y1,"LUTAR NOVAMENTE",font_gold)
    draw_fnt(xx-108,y2,"RETORNAR AO MENU PRINCIPAL",font_computer)
    draw_fnt(xx-88,y3,"SELECAO DE PERSONAGENS",font_computer)
break;
case 2:
    draw_fnt(xx-64,y1,"LUTAR NOVAMENTE",font_computer)
    draw_fnt(xx-108,y2,"RETORNAR AO MENU PRINCIPAL",font_gold)
    draw_fnt(xx-88,y3,"SELECAO DE PERSONAGENS",font_computer)
break;
case 3:
    draw_fnt(xx-64,y1,"LUTAR NOVAMENTE",font_computer)
    draw_fnt(xx-108,y2,"RETORNAR AO MENU PRINCIPAL",font_computer)
    draw_fnt(xx-88,y3,"SELECAO DE PERSONAGENS",font_gold)
break;
}
if c_sel>3  //aqui vai a quantidade maxima de casos
{c_sel=1}
if c_sel<1
{c_sel=3}
}
break;

case 1: // LUTAR NOVAMENTE
global.player1_health=28;
global.player2_health=28;
room_restart();
break;

case 2:  // RETORNAR AO MENU PRINCIPAL
global.nextroom=main_menu;
global.game_mode=1;
room_goto(room_loading);
break;

case 3:  // SELECAO DE PERSONAGENS
global.nextroom=room_versus;
global.game_mode=3;
room_goto(selection_menu);
break;

default: // fim
break;

}

/* */
/*  */
