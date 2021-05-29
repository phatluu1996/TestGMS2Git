transition_kind=21
transition_steps=20


// Position in the center of the screen.
y0 = y + 56

// Displays a sprite with the message "OPTION MODE".
draw_sprite(spr_option_menu,0,160,8)

// Create the menu in blue font for the unselected options
draw_font(x,y0-16,"CHANGE CONTROL 1")
draw_font(x,y0,"CHANGE CONTROL 2")
draw_font(x,y0+16,"EXIT")

// Create the menu in orange font for the selected options
switch (selected)
{
    case 0: // Enter key has not been pressed yet.
    {
        switch (c_sel)
        {
            case 1: // edit control 1
                draw_orange(x,y0-16,"CHANGE CONTROL 1")
            break;
    
            case 2: // edit control 1
                draw_orange(x,y0,"CHANGE CONTROL 2")
            break;
        
            case 3:// exit
                draw_orange(x,y0+16,"EXIT")
            break;
        }
        if c_sel>3
        {
            c_sel=1
        }
        if c_sel<1
        {
            c_sel=3
        }
    }
    break;
}

