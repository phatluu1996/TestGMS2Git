/// @description  Destroy Event Revised
if sprite_index=spr_robot_animation {
if image_index <= 25 {
    instance_create(x+39,y-10,objEnemyExpl0)}// Explosao Sem Item
if image_index >= 26 && image_index <= 31{
    instance_create(x+27,y-26,objEnemyExpl0)}// Explosao Sem Item
if image_index > 31 && image_index <= 34{
    instance_create(x,y-42,objEnemyExpl0)}// Explosao Sem Item
}
else
{instance_create(x,y-41,objEnemyExpl0)}

