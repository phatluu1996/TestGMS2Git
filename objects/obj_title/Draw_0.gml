transition_kind=21
transition_steps=20

// Displays a sprite with the message "MEGAMAN X".
draw_sprite(spr_title,-1,42,4)
draw_sprite(spr_title_x,-1,136,8)

// Create the menu in blue font for the unselected options.
draw_font(x,y-16,"GAME START")
draw_font(x,y,"LOAD GAME")
draw_font(x,y+16,"OPTIONS")

// Create the menu in orange font for the selected options.
switch (selected)
{
case 0: // Enter key has not been pressed yet.
{
switch (c_sel)
{
case 1:
draw_orange(x,y-16,"GAME START")
break;
case 2:
draw_orange(x,y,"LOAD GAME")
break;
case 3:
draw_orange(x,y+16,"OPTIONS")
break;
}
if c_sel>3
{c_sel=1}
if c_sel<1
{c_sel=3}
}
break;
}

