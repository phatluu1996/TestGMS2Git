/// @description  Immunity Activity after taking damage
function EnemyDamageEvent() {
	if inmune == true {inmune_timer +=1}
	switch (inmune_timer)
	{
	case 1: image_alpha = false; break;
	case 2: image_alpha = true; break;
	case 3: image_alpha = false; break;
	case 4: image_alpha = true; break;
	case 5: inmune = false; inmune_timer=0; break;
	}


}
