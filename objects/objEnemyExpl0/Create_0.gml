// Checks if it is off-screen (when the enemy destroys by being off-screen)
if (v_outside==true and h_outside==true)
{
instance_destroy();
exit;
}
else
{
image_speed = 0.5;
}

