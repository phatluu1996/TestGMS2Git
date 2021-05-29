transition_kind=21
transition_steps=20

// Displays a sprite with the message "MEGAMAN X".
draw_sprite(spr_title,-1,42,4)
draw_sprite(spr_title_x,-1,136,8)

X1 = 8
X2 = 128 + X1 // ISSO VAI IGUALAR AS BORDAS DE AMBOS OS LADOS DOS TEXTOS
Y1 = 130     // Position of Text "PLAYER 1" and "PLAYER 2"
Y2 = Y1 + 10 // Position of Text "PRESS"
Y3 = Y1 + 20 // Position of Text "Directional Keys"
Y4 = Y1 + 30 // Position of Characters Names
Y5 = Y1 + 40 // Position of Characters Images

switch (global.play_chr)  {
case 1: { player1 = "MEGAMAN X" };  break
case 2: { player1 = "ARMOR X1" };   break
case 3: { player1 = "ARMOR X1" };   break
case 4: { player1 = "ARMOR X1" };   break
case 5: { player1 = "ZERO" };       break
case 6: { player1 = "ULTIMATE X" }; break
case 7: { player1 = "MEGAMAN IX" }; break
case 8: { player1 = "SCRAP X" };    break
case 9: { player1 = "AXL" };        break
case 10: { player1 = "DARKZERO" };  break
case 11: { player1 = "GREENZERO" }; break
case 12: { player1 = "NIGHTMARE" }; break
case 13: { player1 = "STARFORCE R" };break
case 14: { player1 = "STARFORCE" };  break
}

switch (global.play_chr2)  {
case 1: { player2 = "MEGAMAN X" };  break
case 2: { player2 = "ARMOR X1" };   break
case 3: { player2 = "ARMOR X1" };   break
case 4: { player2 = "ARMOR X1" };   break
case 5: { player2 = "ZERO" };       break
case 6: { player2 = "ULTIMATE X" }; break
case 7: { player2 = "MEGAMAN IX" }; break
case 8: { player2 = "SCRAP X" };    break
case 9: { player2 = "AXL" };        break
case 10: { player2 = "DARKZERO" };  break
case 11: { player2 = "GREENZERO" }; break
case 12: { player2 = "NIGHTMARE" }; break
case 13: { player2 = "STARFORCE R" };break
case 14: { player2 = "STARFORCE" };  break
}

//  PLAYER 1 ==============================================================
if global.player1_lives != 0 { 
    draw_sprite(spr_chrs_img,global.play_chr,X1,Y5);
    draw_orange(X1, Y1,"PLAYER 1"); 
    draw_yellow(X1, Y2,"PRESS");
    draw_yellow(X1, Y3,"UP OR DOWN");
    if global.play_chr != 0 {draw_font(X1, Y4,player1);}
}
//  PLAYER 2 ==============================================================
if global.game_mode == 1 {draw_font(X2, Y1,"PLAYER 2");
if timer < 5 { draw_font(X2, Y2,"PRESS"); draw_font(X2, Y3,"SPACE"); }}
if global.game_mode != 1 && global.player2_lives != 0 {
    draw_sprite(spr_chrs_img,global.play_chr2,X2,Y5);
    draw_orange(X2, Y1,"PLAYER 2"); 
    draw_yellow(X2, Y2,"PRESS");
    draw_yellow(X2, Y3,"UP OR DOWN");
    if global.play_chr2 != 0 {draw_font(X2, Y4,player2);}
}

