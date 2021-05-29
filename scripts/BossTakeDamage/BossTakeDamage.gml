function BossTakeDamage() {
	if self.isDead == false && self.inmune = false {
	if other.strength < self.hp
	{
	    self.hp-=other.strength;
	    other.destroy=true;
	    sound_play(sndEnemyDamage);
	    self.inmune = true;
	}
	else
	{
	    self.hp-=other.strength;
	    sound_play(sndEnemyDamage);
	}
	}


}
