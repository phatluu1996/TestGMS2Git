/// @description  METTOOL Damage Revised

// se o tiro pegar nele em posicao de ataque
if sprite_index != spr_mettool {EnemyTakeDamage()}
else
// se o tiro pegar nele em posicao de descanso
if sprite_index == spr_mettool {
// se o tiro tocar nao tocar no capacete
if image_index  >= 2 {EnemyTakeDamage()}
else
// se o tiro tocar no capacete
{sound_play(sndEnemyShield);
other.destroy=true;}
}

