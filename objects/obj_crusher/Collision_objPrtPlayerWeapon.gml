/// @description  CRUSHER COLISAO COM ARM PADRE

// se o tiro pegar na cabeca
if collision_ellipse(x-14,y-24,x+14,y+1,objPrtBuster1,false,false)
{EnemyTakeDamage()}
else
// se o tiro tocar em outro lugar
{
sound_play(sndEnemyShield)
other.destroy = true
}

