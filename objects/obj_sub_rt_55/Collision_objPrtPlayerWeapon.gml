/// @description  Damage Revised

// se o tiro pegar na cabeca
if collision_ellipse(x+20,y-60,x-25,y-45,objPrtWeapon,false,false)
{EnemyTakeDamage()}
else
// se o tiro tocar em outro lugar
{
sound_play(sndEnemyShield)
other.destroy = true
}





