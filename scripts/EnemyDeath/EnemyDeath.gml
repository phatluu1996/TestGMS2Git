/// @description  What to do when life reaches 0
function EnemyDeath() {

	if hp <= 0 {
	    if notRespawn == false {instance_create(xstart,ystart,object_index);}
	        instance_create(bbox_left+(sprite_width/2),bbox_top+(sprite_height/2),objEnemyExpl0);
	            sound_play(sndEnemyDeath);
	                instance_destroy();
	}


}
