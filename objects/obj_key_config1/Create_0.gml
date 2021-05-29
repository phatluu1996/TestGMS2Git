c_sel=1 // Represents which option was selected before pressing the ENTER key
selected=1 // Represents which option was selected after pressing the ENTER key


// Create the object that writes the menu in blue font
// The blue font menu has a greater depth
// It was created in a separate object so that it is always below the gold fountain object
instance_create(x,y,draw_option)

toggle = false;
temp_key_left= global.player1_key_left;
temp_key_right= global.player1_key_right;
temp_key_down= global.player1_key_down;
temp_key_up= global.player1_key_up;
temp_key_jump= global.player1_key_jump;
temp_key_dash= global.player1_key_dash;
temp_key_shoot= global.player1_key_shoot;
temp_key_especial= global.player1_key_especial;
temp_key_giga= global.player1_key_giga;
temp_key_previous= global.player1_key_previous;
temp_key_next= global.player1_key_next;
temp_key_start= global.player1_key_start;


instance_create(x,y,FadeIn);

