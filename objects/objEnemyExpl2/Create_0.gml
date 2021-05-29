// Checks if it is off-screen (when the enemy destroys by being off-screen)
// This explosion is used by enemies that blow themselves up, and by bombs that explode

if (v_outside==true and h_outside==true)
{
instance_destroy();
exit;
}
else
{
image_speed = 0.5;
inActive = true;
strength = 4;
}

