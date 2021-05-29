function EnemyTakeDamage() {
	if self.visible == true{
	if other.strength < self.hp {other.destroy = true}
	}
	if self.inmune == false and self.visible == true
	{ sound_play(sndEnemyDamage);
	 self.hp -= other.strength ;self.inmune = true 
	}


}
