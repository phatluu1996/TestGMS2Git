if objStormEagle.isDead == false && objStormEagle.inmune = false {
if other.strength < objStormEagle.hp
{
    objStormEagle.hp-=other.strength;
    other.destroy=true;
    sound_play(sndEnemyDamage);
    objStormEagle.inmune = true;
}
else
{
    objStormEagle.hp-=other.strength;
    sound_play(sndEnemyDamage);
}
}

