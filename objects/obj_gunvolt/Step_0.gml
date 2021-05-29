var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

think=40; // Time thinking before attacking again
EnemySearchPlayer(); // Search for the nearest player
EnemyDeath(); // When life decreases to 0 or less.
EnemyDamageEvent(); // Immunity time after taking damage.
EnemyStartAtack(); // Defines how far from the nearest player to start attacking.

if inActive=true and isAtk=true {timer+=1;
EnemyOutside();

// SPRITES
if timer=75{sprite_index=gunvolt_stand0;image_speed=0.4}
if timer>60 && timer<75{sprite_index=gunvolt_atak_end0;image_speed=0.4}
if timer>25 && timer<40{sprite_index=gunvolt_atak0;image_speed=0.4}
if timer>40 && timer<60{sprite_index=gunvolt_atk0_s;image_speed=0.5}
// State Randomized
if state="idle"{timer=0; state=choose("missile","volt");}
// Missile
if state="missile"{
if timer==40  {instance_create(x,y,obj_gunvolt_misil)}
if timer==50  {instance_create(x,y,obj_gunvolt_misil)}
if timer>140 {state="idle"; timer=0;}
}
// VOLT
if state="volt"{timer+=1;
if timer==40  {instance_create(x-10,y-10,obj_gunvolt_volt)}
if timer==50  {instance_create(x-20,y-10,obj_gunvolt_volt)}
if timer>140 {state="idle"; timer=0;}
}
}

}
}
else
{
{
/// PAUSE [TRUE]
gravity = 0
hspeed = 0
vspeed = 0
speed=0
image_index = image_index
image_speed = 0

}
}
