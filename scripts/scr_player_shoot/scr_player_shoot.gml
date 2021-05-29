function scr_player_shoot(argument0, argument1, argument2, argument3) {
	X = argument0;
	Y = argument1;
	shootSprite = argument2;
	nonShootSprite = argument3;

	switch(global.weaponOrder){
	    case 0:
	        scr_player_charge();
	        if(!isShoot && key_shoot_release && instance_number(objXBuster) < 3)
	        {
	            isShoot = true;
	            var busterObj;
	            busterObj = instance_create(X, Y, objXBuster);       
	            busterObj.image_xscale = sign(busterObj.x-x);   
	            busterObj.depth = depth - 1; 
	            switch(chargeLevel){
	                case 0:
	                    busterObj.sprite_index = ds_list_find_value(buster, 0);
	                    busterObj.damage = ds_list_find_value(damage, 0);
	                    busterObj.hsp = sign(busterObj.x-x) * 7;
	                    break;  
                    
	                case 1:
	                    busterObj.sprite_index = ds_list_find_value(buster, 1);  
	                    busterObj.damage = ds_list_find_value(damage, 1);    
	                    busterObj.hsp = sign(busterObj.x-x) * 7.5;
	                    break;  
                    
	                case 2:
	                    busterObj.sprite_index = ds_list_find_value(buster, 2); 
	                    busterObj.damage = ds_list_find_value(damage, 2);  
	                    busterObj.hsp = sign(busterObj.x-x) * 8;         
	                    break;  
                
	                case 3:
	                    busterObj.sprite_index = ds_list_find_value(buster, 3);
	                    busterObj.damage = ds_list_find_value(damage, 3);     
	                    busterObj.hsp = sign(busterObj.x-x) * 8;   
	                    break;    
	            }
	            chargeLevel = 0;
	            chargeTimer = 0;
	        }
        
	        if(isShoot || shootTimer > 0){
	            shootTimer+=1;
	            if(key_shoot_press && shootTimer >= 5)
	            {
	                isShoot = false;
	                shootTimer = 1;        
	            }
            
	            if(shootTimer >= 20)
	            {
	                isShoot = false;
	                shootTimer = 0;
	            }
	            sprite_index = shootSprite;
	        }else{
	            sprite_index = nonShootSprite;
	        }
	        break;
	    case 1:
	        if(!isShoot && key_shoot_release && instance_number(objXWeapon) < 3){        
	            isShoot = true; 
	            var i;
	            i = 1;
	            repeat 5 {
	               var objWeap;
	               objWeap = instance_create(x, y, objXWeapon);
	               objWeap.depth = depth - 1; 
	               objWeap.dir = i * 360/5;
	               objWeap.timer = 300;
	               objWeap.player = id;
	               i+=1;
	            }       
	        }       
        
	        if(isShoot){
	            shootTimer+=1;   
	            if(shootTimer >= 20)
	            {
	                isShoot = false;
	                shootTimer = 0;
	            }
	            sprite_index = shootSprite;     
	        }else{
	            sprite_index = nonShootSprite;
	        } 
	        break;
	}
    
    


}
