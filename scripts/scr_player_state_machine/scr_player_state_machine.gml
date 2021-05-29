function scr_player_state_machine() {
	switch(state){
	    case "spawn":
	        spawnTimer+=1;
	        if(spawnTimer > 60){            
	            if(y >= ystart){                
	                y = ystart;
	                vsp = 0;
	                if(image_index + image_speed >= image_number){
	                    state = "idle";
	                }            
	            }else{
	                image_index = 0;
	                vsp = 8;
	            }            
	        }else{
	            image_index = 0;
	            sprite_index = sprSpawn;
	        }
	        y += vsp;
	        exit;
	        break;
    
	    case "idle":
	        scr_player_input(); 
	        if(key_right - key_left != 0){
	            image_xscale = key_right - key_left;
	        }    
        
	        if((key_left || key_right) && !place_meeting(x + image_xscale*runSpd, y+vsp, objPrtSolid) && !isSlash)
	        {
	            state = "step";            
	        }
        
	        //Fall        
	        if(!place_meeting(x, y + 1, objPrtSolid)){
	            state = "fall";
	            isSlash = false;
	        }
        
	        if(key_dash && !place_meeting(x + image_xscale * dashSpd, y, objPrtSolid)){
	            mask_index = mask_low;
	            state = "dash";
	            isSlash = false;
	            slashIndex = 0;
	            scr_create_dash_dust();
	        }
        
	        //Jump
	        if(key_jump)
	        {
	            isSlash = false;
	            state = "jump";
	            vsp = -jumpSpd;
	        }
        
	        scr_player_get_down_ladder();
        
	        scr_player_catch_ladder();    
        
	        scr_player_attack(x + image_xscale * 16, y - 19, sprIdleAttack[0], sprIdle);
                
	        break;
    
	    case "step":     
	        scr_player_input();  
	        if(key_right - key_left != 0){
	            image_xscale = key_right - key_left;
	        } 
	        stepTimer+=1;
	        hsp = (key_right - key_left) * (hsp + runSpd/4);
        
	        if(stepTimer >= 4 && !place_meeting(x + image_xscale * runSpd, y, objPrtSolid))
	        {
	            state = "run";
	            stepTimer = 0;
	        }
        
	        //Hit wall or release move key
	        if(place_meeting(x + hsp, y + vsp, objPrtSolid) || (!key_left && !key_right))
	        {
	            state = "idle";
	            stepTimer = 0;
	        }
        
	        //Fall
	        if(!place_meeting(x, y + 1, objPrtSolid)){
	            state = "fall";
	            stepTimer = 0;
	        }
        
	        if(key_dash && !place_meeting(x + image_xscale * dashSpd, y, objPrtSolid)){
	            mask_index = mask_low;
	            state = "dash";
	            stepTimer = 0;
	            scr_create_dash_dust();
	        }
        
	        //Jump
	        if(key_jump)
	        {
	            state = "jump";
	            vsp = -jumpSpd;
	            stepTimer = 0;
	        } 
        
	        scr_player_get_down_ladder();
        
	        scr_player_catch_ladder();
        
	        scr_player_attack(x + image_xscale * 18, y - 20, sprRunAttack, sprStep);        
	        break;    
    
	    case "run":
	        scr_player_input();
	        if(key_right - key_left != 0){
	            image_xscale = key_right - key_left;
	        }
        
	        hsp = (key_right - key_left) * runSpd;             
        
	        //Hit wall
	        if(place_meeting(x + hsp, y+vsp, objPrtSolid) || (!key_left && !key_right))
	        {
	            state = "idle";
	            stepTimer = 0;
	        }
        
	        if(key_dash && !place_meeting(x + image_xscale * dashSpd, y, objPrtSolid)){
	            mask_index = mask_low;
	            state = "dash";
	            fadeTimer = 0;
	            scr_create_dash_dust();
	        }
        
	        //Fall
	        if(!place_meeting(x, y + 1, objPrtSolid)){
	            state = "fall";
	        }
        
	        //Jump
	        if(key_jump)
	        {
	            state = "jump";
	            vsp = -jumpSpd;
	        }       
        
	        scr_player_get_down_ladder();
        
	        scr_player_catch_ladder();
        
	        scr_player_attack(x + image_xscale * 16, y - 20, sprRunAttack, sprRun);  
	        break;
        
	    case "dash":
	        dashTimer+=1;
	        scr_player_input();
	        if(key_right - key_left != 0){
	            image_xscale = key_right - key_left;
	        }
	        hsp = image_xscale * dashSpd; 
        
	        if(!place_meeting(x, y + 1, objPrtSolid) && !isAirDash){
	            state = "fall";   
	            dashTimer = 0;
	            mask_index = mask_normal;
	        }
	        else if(place_meeting(x + hsp, y, objPrtSolid) || dashTimer >= 25 || !key_dash_hold){
	            state = iif(!isAirDash,"idle", "fall");
	            dashTimer = 0;
	            mask_index = mask_normal;
	            hsp = 0;
	        }
	        else if(key_jump && !isAirDash)
	        {
	            state = "jump";
	            vsp = -jumpSpd;
	            dashTimer = 0;
	            isHyperSpd = key_dash_hold;
	            mask_index = mask_normal;
	        }     
        
	        scr_player_attack(x + image_xscale * 26, y - 15, sprDashAttack, sprDash); 
        
	        if(scr_anim_end()){
	            image_index = image_number - 2;
	        } 
	        break;  
        
	    case "jump":
	        scr_player_input();
	        if(key_right - key_left != 0){
	            image_xscale = key_right - key_left;
	        }
	        hsp = (key_right - key_left) * iif(isHyperSpd, dashSpd, runSpd);
	        scr_player_gravity();
	        if(vsp >= 0 || !key_jump_hold)
	        {            
	            vsp = 0;
	            state = "fall";
	        }
        
	        if(place_meeting(x, y + vsp, objPrtSolid))
	        {
	            while(!place_meeting(x, y + sign(vsp), objPrtSolid)){ y += sign(vsp)};
	            vsp = 0;
	            state = "fall";
	            exit;
	        }
        
	        scr_player_air_abilities();
        
	        scr_player_catch_ladder();
        
	        scr_player_attack(x + image_xscale * 16, y - 23, sprJumpAttack, sprJump);
        
	        if(scr_anim_end()){
	            image_index = image_number/2;
	        }
	        break;
        
	    case "fall":        
	        scr_player_input();
	        if(key_right - key_left != 0){
	            image_xscale = key_right - key_left;
	        }
	        hsp = (key_right - key_left) * iif(isHyperSpd, dashSpd, runSpd);
	        scr_player_gravity();
        
	        if(place_meeting(x, y + vsp, objPrtSolid))
	        {
	            while(!place_meeting(x, y + sign(vsp), objPrtSolid)){ y += sign(vsp)};
	            vsp = 0;
	            isHyperSpd = false;
	            if(hsp == 0){
	                state = "idle";
	            }else{
	                state = "run";
	            }            
	            exit;
	        }

	        if(place_meeting(x + hsp, y, objPrtSolid) && key_right - key_left == image_xscale){ 
	            state = "wall_cling";
	            isHyperSpd = false;
	            isSlash = false;     
	            isRoll = false;  
	        }
        
	        if(place_meeting(x + image_xscale * 5, y, objPrtSolid) && key_jump){      
	            state = "wall_kick"; 
	            isHyperSpd = key_dash_hold;
	            isSlash = false;     
	            isRoll = false; 
	        }
        
	        scr_player_air_abilities();
        
	        scr_player_catch_ladder();
        
	        if(place_meeting(x, y + 8, objPrtSolid) && state != "hover"){
	            scr_player_attack(x + image_xscale * 16, y - 23, sprLandingAttack, sprLanding);
	            image_index = 0;      
	        }else{
	            scr_player_attack(x + image_xscale * 16, y - 23, sprFallAttack, sprFall);         
	        }                  
        
	        if(scr_anim_end()){
	            image_index = image_number/2;
	        }
	        break;
        
	    case "dash_up":
	        scr_player_input(); 
	        scr_player_charge();
	        if(scr_anim_end()){        
	            image_index = image_number - 1;
	            image_speed = 0;           
	        }
        
	        if(image_speed == 0){
	            if(dashUpTimer == 0){
	                var obj;
	                obj = instance_create(x, y + 6, objEffect);
	                obj.target = id;
	                obj.sprite_index = spr_dash_up_spark;
	                obj.image_xscale = image_xscale;     
	            }            
	            dashUpTimer+=1;
	            vsp = -(dashSpd+1);
	            if(dashUpTimer >= 15 || place_meeting(x, y + vsp, objPrtSolid)){
	                state = "fall";
	                dashUpTimer = 0;
	                image_speed = 1;
	                vsp = 0;
	            } 
	        }else{
	            vsp = 0;
	        }  
        
	        if(place_meeting(x + 1, y + vsp, objPrtMovingPlatform) || place_meeting(x - 1, y + vsp, objPrtMovingPlatform)){
	            state = "fall";
	            dashUpTimer = 0;
	            image_speed = 1;
	        }
	        sprite_index = sprDashUp;
        
	        break;
        
	    case "hover":
	        scr_player_input();
                          
	        hoverTimer+=1;
	        //frame 0-1 is go back, 2 is stop, 3-4 is go forward
	        hsp = (key_right - key_left) * runSpd;
	        var shotHeight;
	        var shotDist;
	        shotDist = 14;
	        shotHeight = 16;
	        if((key_right - key_left) == image_xscale){
	            if(image_index + image_speed != 3 && image_index + image_speed != 4){
	                image_index = 3;
	            }
	            if(image_index + image_speed >= 4){
	                image_index = 4;
	            }
	            shotHeight = 14;
	            shotDist = 23;
	        }
	        else if((key_right - key_left) == -image_xscale){
	            if(image_index + image_speed != 0 && image_index + image_speed != 1){
	                image_index = 0;
	            }
	            if(image_index + image_speed >= 1){
	                image_index = 1;
	            }
	            shotHeight = 16;
	            shotDist = 13;
	        }
	        else{
	            image_index = 2;
	            shotHeight = 20;
	            shotDist = 15;
	        }
        
	        if(place_meeting(x + hsp, y, objPrtSolid) && key_right - key_left == image_xscale){
	            state = "wall_cling";
	            isHyperSpd = false;
	        }
        
	        if(key_jump || hoverTimer >= 90 || place_meeting(x + 2 , y, objPrtMovingPlatform) || place_meeting(x - 2, y, objPrtMovingPlatform) ){
	            state = "fall";
	        }
        
	        scr_player_attack(x + image_xscale * shotDist, y - shotHeight, sprHoverAttack, sprHover);
	        break;
        
	    case "wall_cling":
	        scr_player_input();    
	        wallSlideTimer+=1;
	        var mvSolid;        
	        vsp = wallClingSpd;   
	        var hspd;
	        var mySolid;             
	        hspd = image_xscale * 4;         
	        mySolid = instance_place(x + hspd, y, objPrtSolid);
	        if(wallSlideTimer mod 5 == 0 && wallSlideTimer > 10){
	            scr_create_wall_dust();
	        }          
	        if((key_right - key_left != image_xscale && image_index > image_number * 2/3) 
	        || !place_meeting(x + hspd, y, objPrtSolid))
	        {
	            state = "fall";
	            isSlash = false;     
	            isRoll = false; 
	        }
              
        
	        if(place_meeting(x, y + vsp, objPrtSolid)){
	            y = floor(y);
	            while(!place_meeting(x, y + sign(vsp), objPrtSolid)){
	                y+=sign(vsp);
	            }
	            vsp = 0;
	            state = "idle";  
	            isSlash = false;     
	            isRoll = false;
	        }     
        
	        if(key_jump){
	            state = "wall_kick";  
	            sprite_index = sprWallKick;
	            image_index = 0;
	            isHyperSpd = key_dash_hold; 
	            isSlash = false;     
	            isRoll = false; 
	        }            
             
	        scr_player_attack(x - image_xscale * 18, y - 10, sprWallClingAttack, sprWallCling);              
	        if(scr_anim_end() && (sprite_index == sprWallClingAttack || sprite_index == sprWallCling)){
	            image_index = image_number - 2;
	        }             
	        break;
        
	    case "wall_kick":
	        scr_player_input();  
	        isSlash = false;      
	        vsp = 0;
	        if(scr_anim_end()){
	            image_index = image_number - 2;
	            wallKickTimer+=1;
	            if(wallKickTimer >= 3){
	                state = "wall_jump";
	                wallKickTimer = 0;
	                vsp = -jumpSpd;
	            }
	        }
                                             
	        scr_player_attack(x + image_xscale * 18, y - 23, sprWallKickAttack, sprWallKick);
	        break;
        
	    case "wall_jump":             
	        wallKickTimer+=1;         
	        scr_player_gravity();  
        
	        if(wallKickTimer >= 10){
	            scr_player_input();  
	            if(key_right - key_left != 0){
	                image_xscale = key_right - key_left;
	            }
	            hsp = (key_right - key_left) * iif(isHyperSpd, dashSpd, runSpd);  
	            scr_player_attack(x + image_xscale * 18, y - 23, sprJumpAttack, sprJump);               
	        }else{
	            scr_player_input(); 
	            hsp = -image_xscale * iif(isHyperSpd, dashSpd, runSpd);
	            scr_player_attack(x + image_xscale * 18, y - 23, sprWallJumpAttack, sprWallJump);
	        }      
        
	        if(vsp >= 0 || !key_jump_hold && wallKickTimer >= 2)
	        {            
	            vsp = 0;
	            state = "fall";
	            wallKickTimer = 0;
	        }             
	        break;
        
	    case "climb":
	        scr_player_input();
	        if(key_right - key_left != 0){
	            image_xscale = key_right - key_left;
	        }
	        vsp = (key_down - key_up) * climbSpd * (!isShoot) * (!isSlash);
	        if(vsp != 0 || isSlash || isShoot){
	            image_speed = 1;
	        }else{
	            image_speed = 0;
	        }
        
	        //Jump
	        if((key_jump && vsp == 0)|| !place_meeting(x , y + 1, objLadder))
	        {
	            mask_index = mask_normal;
	            state = "fall";
	            vsp = 0;
	            isSlash = false;     
	            isRoll = false; 
	            exit;
	        }
        
	        if(place_meeting(x , y + 1, objPrtSolid)){
	            mask_index = mask_normal;
	            state = "idle";
	        }        
        
	        if(!instance_position(x, bbox_top - 1, objLadder)){
	            isSlash = false;     
	            state = "climb_up";
	            vsp = 0;
	            var ladder;
	            ladder = instance_position(x ,bbox_top + 1, objLadder);
	            if(ladder != noone){
	                instance_activate_object(ladder.topLadder); 
	                y = ladder.bbox_top - 1;
	            }            
	        }
        
	        scr_player_attack(x + image_xscale * 16, y - 15, sprClimbAttack, sprClimb);        
	        break;
        
	    case "climb_up":
	        climbTimer+=1;
	        if(climbTimer >= 20){
	            state = "idle";
	            climbTimer = 0;   
	            if(place_meeting(x, y + 3, objTopLadder)){
	                while(!place_meeting(x, y + 1, objTopLadder)){
	                    y+=1;
	                }
	            }         
	        }
	        scr_player_charge();
	        sprite_index = sprClimbUp;
	        break;
        
	    case "climb_down":
	        climbTimer+=1;
	        y+=1.8;
	        if(climbTimer >= 20){
	            state = "climb";
	            climbTimer = 0;   
	            //y = instance_place(x, y + 1, objLadder).bbox_top + (y - bbox_top + 2) + 1;       
	            image_index = 0;     
	        }
	        scr_player_charge();
	        sprite_index = sprClimbDown;
	        break;
        
	    case "damaged":
	        hsp = -image_xscale * runSpd/3;
	        if(!place_meeting(x, y + 1, objPrtSolid)){
	            vsp += grav;
	        }
                
	        damageTimer+=1;
	        switch((damageTimer / 2) mod 3){
	            case 0:
	                image_alpha = 1;
	                break;
                
	            case 1:
	                image_alpha = 0.5;
	                break;
                
	            case 2:
	                image_alpha = 0;
	                break;
	        }
        
	        if(damageTimer >= 35){
	            state = "idle";
	            image_alpha = 1;
	            damageTimer = 0;
	        }
        
	        scr_player_charge();
	        sprite_index = sprDamage;
	        break;
        
	    case "giga_attack":
	        scr_player_giga_attack();        
	        break;
    
	    //Applied to ZERO    
	    case "perform_skills":
	        scr_player_perform_skills();
	        break;
	}

	if(keyboard_check_pressed(ord("E")) && state != "damaged"){
	    vsp = -2;
	    state = "damaged";
	}
	scr_player_trigger_skills();
	scr_player_trigger_giga_attack();


}
