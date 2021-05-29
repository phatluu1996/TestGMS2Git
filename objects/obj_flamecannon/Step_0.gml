var __b__;
__b__ = action_if_variable(global.pause, false, 0);
if __b__
{
{
/// MOVEMENT and SPRITES

think=80; // Thinking time before to start to create the flames
atk_end=think*2 // Time to destroy the flames
EnemySearchPlayer(); // Search for the nearest player
EnemyDeath(); // When life decreases to 0 or less.
EnemyDamageEvent(); // Immunity time after taking damage.
EnemyImageScale(); // Flip the sprite according to the value of the variable "direccion".
EnemyStartAtack(); // Defines how far from the nearest player to start attacking.

if inActive=true{
if isAtk=true { timer+=1;
if timer < think {image_index=0}
if timer > think-0.5 && timer < think+16.5{image_index=timer-think} // sprites
if timer > think+16.5 {image_index=0;}
if timer == atk_end {timer=0;}
/// Attacking
// Creates the first flame of fire
if timer=think + 1 {newA=instance_create(x-16,y+10,obj_flamecannon_shot); }
// Moves the flame to the correct position
if timer > think + 3 && timer < atk_end - 1{newA.x=x-16;newA.y=y+12;}
// Create the second flame and place it in the same image as flame 1
if timer=think + 5 {newB=instance_create(x-32,y+10,obj_flamecannon_shot); newB.image_index=newA.image_index;}
// Moves the flame to the correct position
if timer > think + 7 && timer < atk_end - 1{newB.x=x-32;newB.y=y+12;}
// Create the third flame and place it in the same image as flame 1
if timer=think + 9 {newC=instance_create(x-48,y+10,obj_flamecannon_shot); newC.image_index=newA.image_index;}
// Moves the flame to the correct position
if timer > think + 11 && timer < atk_end - 1{newC.x=x-48;newC.y=y+12;}
// Cria a quarta e ultima chama e a coloca na mesma imagem que a chama 1
if timer=think + 13 {newD=instance_create(x-64,y+10,obj_flamecannon_shot); newD.image_index=newA.image_index;}
// Moves the flame to the correct position
if timer > think + 17 && timer < atk_end - 1{newD.x=x-64;newD.y=y+12;}
if timer == atk_end - 20 {
    newA.destroy=true;
    newB.destroy=true;
    newC.destroy=true;
    newD.destroy=true;
    }
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
