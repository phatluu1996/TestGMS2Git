/// @description  Enemy Init Variables
// EnemyInitVariables(inActive,strength,hp)
EnemyInitVariables(true,2,2)

/// TOTALMENTE CORRIGIDO 26/03/2021

image_speed=0.3
y=y-20
x=choose(x-20,x+20)
xja = choose(x-50,x-100,x+50,x)
yja = choose(y-200,y-150,y-100,y-50)
atualizar = 10 // tempo para atualizar a posicao do player
alarm[0]=atualizar

