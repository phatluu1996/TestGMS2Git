timer+=1;

// SPRITES
if image_index > 8 {image_index=9}

// Tempo Ate Desaparecer
if timer=200{alpha=true;}

// Destruir Com Armas do Player ou do Boss
if hp < 1 {instance_destroy();}

// Ficar Transparente Ate Desaparecer
if alpha == true {image_alpha-=.1; if image_alpha < 0.1 {instance_destroy();}}

