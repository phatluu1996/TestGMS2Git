/// @description  Check which is the closest player instance if there are more than 1
function EnemySearchPlayer() {

	if !instance_exists(objPrtPlayer)
	{
	exit;
	}
	else
	if instance_exists(objPrtPlayer)
	{
	    player = instance_nearest(x,y,objPrtPlayer)
	}


}
