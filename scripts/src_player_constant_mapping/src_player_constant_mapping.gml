function src_player_constant_mapping() {
	//Sprites
	switch(character){
	    case ULTIMATE_X:
	        //Non-attack-sprites
	        sprIdle = spr_ux_idle;
	        sprJump = spr_ux_jump;
	        sprHover = spr_ux_hover;
	        sprFall = spr_ux_fall;
	        sprLanding = spr_ux_landing;
	        sprRun = spr_ux_run;
	        sprStep = spr_ux_step;
	        sprDash = spr_ux_dash;
	        sprWallCling = spr_ux_wall_cling;
	        sprWallKick = spr_ux_wall_kick;
	        sprWallJump  = spr_ux_wall_jump;
	        sprClimb = spr_ux_climb;
        
	        //Attack-sprites
	        sprIdleAttack[0] = spr_ux_idle_shoot;
	        sprJumpAttack = spr_ux_jump_shoot;
	        sprHoverAttack = spr_ux_hover_shoot;
	        sprFallAttack = spr_ux_fall_shoot;
	        sprLandingAttack = spr_ux_landing_shoot;
	        sprRunAttack = spr_ux_run_shoot;
	        sprDashAttack = spr_ux_dash_shoot;
	        sprWallClingAttack = spr_ux_wall_cling_shoot;
	        sprWallKickAttack = spr_ux_wall_kick_shoot;
	        sprWallJumpAttack  = spr_ux_wall_jump_shoot;
	        sprClimbAttack = spr_ux_climb_shoot;
	        sprGigaAttack = spr_ux_nove_strike;
        
	        //No-attack-sprites
	        sprClimbUp = spr_ux_climb_up;
	        sprClimbDown = spr_ux_climb_down;
	        sprSpawn = spr_ux_spawn;        
	        sprDamage = spr_ux_damaged;
	        sprVictory = spr_ux_victory;
	        sprDashUp = spr_ux_dash_up;
        
	        //Buster sprites
	        ds_list_add(buster, spr_x_buster_0);
	        ds_list_add(buster, spr_x_buster_1);
	        ds_list_add(buster, spr_x_buster_2);
	        ds_list_add(buster, spr_ux_buster_3);
	        //Buster damage
	        ds_list_add(damage, 1);
	        ds_list_add(damage, 2);
	        ds_list_add(damage, 3);
	        ds_list_add(damage, 4);       
        
	        //Mask        
	        mask_normal = spr_x_normal_mask;
	        mask_low = spr_x_lower_mask;   
        
	        ////Original Colors  
	        //Primary 
	        //ds_list_add(originalColor, make_color_rgb(66,115,222));     
	        //ds_list_add(originalColor, make_color_rgb(41,82,132));
	        //ds_list_add(originalColor, make_color_rgb(24,57,90)); 
	        //ds_list_add(originalColor, make_color_rgb(32,48,128));
			
			////Secondary
			//ds_list_add(originalColor, make_color_rgb(255,239,148));
			//ds_list_add(originalColor, make_color_rgb(239,140,66));
			//ds_list_add(originalColor, make_color_rgb(173,99,66));
			//ds_list_add(originalColor, make_color_rgb(128,68,38));
			
        
	        //////Replace Colors  
	        ////Primary 
	        //ds_list_add(replaceColor, make_color_rgb(224, 224, 224)); 
	        //ds_list_add(replaceColor, make_color_rgb(204, 204, 204 ));
	        //ds_list_add(replaceColor, make_color_rgb(174, 174, 174 )); 
	        //ds_list_add(replaceColor, make_color_rgb(124, 124, 124)); 
			
			////Secondary
			//ds_list_add(replaceColor, make_color_rgb(99,191,248));
			//ds_list_add(replaceColor, make_color_rgb(0,135,248));
			//ds_list_add(replaceColor, make_color_rgb(21,114,216));
			//ds_list_add(replaceColor, make_color_rgb(15,81,154));

	        break;
        
	    case ZERO:              
	        //Non-attack-sprites      
	        sprIdle = spr_z_idle;                
	        sprJump = spr_z_jump;
	        sprFall = spr_z_fall;
	        sprLanding = spr_z_landing;
	        sprRun = spr_z_run;
        
	        sprStep = spr_z_step;
	        sprDash = spr_z_dash;
	        sprWallCling = spr_z_wall_cling;
	        sprWallKick = spr_z_wall_kick;
	        sprWallJump = spr_z_wall_jump;
	        sprClimb = spr_z_climb;
        
	        //Attack-sprites
	        sprIdleAttack[0] = spr_z_combo_slash_0;
	        sprIdleAttack[1] = spr_z_combo_slash_1;
	        sprIdleAttack[2] = spr_z_combo_slash_2;
	        sprJumpAttack = spr_z_jump_slash;
	        sprFallAttack = spr_z_jump_slash;
	        sprLandingAttack = spr_z_landing_slash;
	        sprWallClingAttack = spr_z_wall_cling_slash;
	        sprWallJumpAttack = spr_z_jump_slash;
	        sprClimbAttack = spr_z_climb_slash;
	        sprRunAttack = spr_z_run;
	        sprDashAttack = spr_z_dash;
	        sprWallKickAttack = spr_z_wall_kick;
	        sprRollAttack = spr_z_roll_slash;

	        //sprGigaAttack = spr_ux_nove_strike;

	        //No-attack-sprites  
	        sprClimbUp = spr_z_climb_up;
	        sprClimbDown = spr_z_climb_down;
	        sprSpawn = spr_z_spawn;    
	        sprDamage = spr_z_damaged;
	        sprVictory = spr_z_victory;
        
	        //Skill
	        sprSkillVortexSlash = spr_z_vortex_slash;
        
	        //Mask        
	        mask_normal = spr_z_normal_mask;
	        mask_low = spr_z_lower_mask;
                   
	        ////Original Colors  
	        //Primary 
	        ds_list_add(originalColor, make_color_rgb(224,32,0));     
	        ds_list_add(originalColor, make_color_rgb(160,32,0));
	        ds_list_add(originalColor, make_color_rgb(96,32,0)); 
	        //Hair 
	        ds_list_add(originalColor, make_color_rgb(224,192,0));
	        ds_list_add(originalColor, make_color_rgb(160,96,0));
        
	        //Saber
	        ds_list_add(originalColor, make_color_rgb(66,165,66));     
	        ds_list_add(originalColor, make_color_rgb(66,198,66));
	        ds_list_add(originalColor, make_color_rgb(99,231,99));
	        ds_list_add(originalColor, make_color_rgb(165,231,165));  
                                                                                               
	        ////Replace Colors  
	        //Primary 
	        ds_list_add(replaceColor, make_color_rgb(75,75,75)); 
	        ds_list_add(replaceColor, make_color_rgb(55,55,55));
	        ds_list_add(replaceColor, make_color_rgb(25,25,25));    
	        //Hair 
	        ds_list_add(replaceColor, make_color_rgb(206,189,156));
	        ds_list_add(replaceColor, make_color_rgb(173,140,107));
               
	        //Saber
	        ds_list_add(replaceColor, make_color_rgb(116,58,150));     
	        ds_list_add(replaceColor, make_color_rgb(148,74,189));
	        ds_list_add(replaceColor, make_color_rgb(165,107,198));
	        ds_list_add(replaceColor, make_color_rgb(206,181,222));                             
	        break;
	}

	//Shader
	if(ds_list_size(originalColor) > 0 && ds_list_size(replaceColor) > 0){
	    sh_handle_range = shader_get_uniform(sh_replace_color, "range");
	    for (i=0; i<ds_list_size(originalColor); i+=1)
	    {        
	        sh_handle_match[i] = shader_get_uniform(sh_replace_color, "colorMatch"+string(i));
	        sh_handle_replace[i] = shader_get_uniform(sh_replace_color, "colorReplace"+string(i));   
	        var color = ds_list_find_value(originalColor, i);
	        show_debug_message("Color: " + string(color));
	        show_debug_message("Red: " + string(colour_get_red(color)));
	        show_debug_message("Green: " + string(colour_get_green(color)));
	        show_debug_message("Blue: " + string(colour_get_blue(color)));
	    };    
	} 




}
