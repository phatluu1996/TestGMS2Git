function scr_player_draw_event() {
	if(ds_list_size(originalColor) > 0 && ds_list_size(replaceColor) > 0){
	    shader_set(sh_replace_color);
	    shader_set_uniform_f(sh_handle_range, 1);
	    for (i=0; i<ds_list_size(originalColor); i+=1)
	    {   
	        var colorMatch = ds_list_find_value(originalColor, i);
	        var replaceMatch = ds_list_find_value(replaceColor, i);
	        show_debug_message(colorMatch);
	        show_debug_message(replaceMatch);
	        shader_set_uniform_f(sh_handle_match[i], 
	            colour_get_red(colorMatch)/255, 
	            colour_get_green(colorMatch)/255,
	            colour_get_blue(colorMatch)/255);          
            
	        shader_set_uniform_f(sh_handle_replace[i], 
	            colour_get_red(replaceMatch)/255, 
	            colour_get_green(replaceMatch)/255,
	            colour_get_blue(replaceMatch)/255);           
	    }
	}

	if(state == "hover"){
	    switch(character){
	        case ULTIMATE_X:
	            switch(image_index){
	                case 0:
	                case 1:
	                    draw_sprite_ext(spr_hover_effect1, hoverTimer/3, x, y, image_xscale, 1, 0, c_white, 1);
	                    break; 
	                case 2:
	                    draw_sprite_ext(spr_hover_effect2, hoverTimer/3, x, y, image_xscale, 1, 0, c_white, 1);                    
	                    break;  
                    
	                case 3:
	                case 4:
	                    draw_sprite_ext(spr_hover_effect4, hoverTimer/3, x, y, image_xscale, 1, 0, c_white, 1);
	                    break;
	            }
	            break;                
	    }
	}

	if(state == "dash"){
	    switch(character){
	        case ULTIMATE_X:   
	            if(image_index <= 3){           
	                draw_sprite_ext(spr_dash_jet, dashTimer, x - image_xscale*15, y - 4, image_xscale, 1, 0, c_white, 1);
	            }else{
	                draw_sprite_ext(spr_dash_jet, dashTimer, x - image_xscale*24, y - 4, image_xscale, 1, 0, c_white, 1);
	            }                          
	            break;   
            
	        case ZERO:
	        if(image_index <= 3){           
	                draw_sprite_ext(spr_dash_jet, dashTimer, x - image_xscale*22, y - 4, image_xscale, 1, 0, c_white, 1);
	            }else{
	                draw_sprite_ext(spr_dash_jet, dashTimer, x - image_xscale*32, y - 4, image_xscale, 1, 0, c_white, 1);
	            }  
	            break;             
	    }
	}

	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	if(chargeLevel > 0){
	    var chargeSprite;
	    var chargeColor;
	    switch(chargeLevel){
	        case 1:
	            chargeSprite = spr_x_charge_1;
	            draw_sprite_ext(chargeSprite, chargeTimer/2, x, y - 20, 0.5, 0.5, 1, c_white, 1);
	            break;
            
	        case 2:
	            chargeSprite = spr_x_charge_2;    
	            draw_sprite_ext(spr_x_charge_1, chargeTimer, x, y - 20, 0.5, 0.5, 1, c_white, 1);
	            draw_sprite_ext(chargeSprite, chargeTimer, x, y - 20, 0.5, 0.5, 0, c_white, 1);
	            break;
            
	        case 3:
	            chargeSprite = spr_ux_charge_3;    
	            draw_sprite_ext(spr_x_charge_1, chargeTimer, x, y - 20, 0.5, 0.5, 1, c_white, 1);
	            draw_sprite_ext(chargeSprite, chargeTimer, x, y - 20, 0.5, 0.5, 0, c_white, 1); 
	            break;
	    }
	    //draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, chargeColor, image_alpha);     
	}
	//Debug collision mask
	//draw_sprite_ext(mask_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	draw_text(bbox_left, bbox_top - 30, string_hash_to_newline(global.weaponOrder));

	shader_reset();



}
