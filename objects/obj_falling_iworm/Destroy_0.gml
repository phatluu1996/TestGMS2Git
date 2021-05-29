/// @description  Destroy Event Corrigido 23/03/2021

xx = (sprite_width/2) // centro do sprite em x
yy = (sprite_height/2) // centro do sprite em y

instance_create(x+xx,y+yy,obj_inimigo_exp0)

/*
Informacoes:-

use instance_create(x+xx,y+yy,obj_inimigo_exp1) // Explosao Com Item
somente se a localizacao 
do sprite for 0,0
========================================
se a localizacao estiver no centro
use instance_create(x,y,obj_inimigo_exp1) // Explosao Com Item
========================================
se a localizacao estiver no centro de y e no 0 de x
use instance_create(x+xx,y,obj_inimigo_exp1) // Explosao Com Item
========================================
se a localizacao estiver no centro de x e no final de y
use instance_create(x,y-yy,obj_inimigo_exp1) // Explosao Com Item
*/

/* */
/*  */
