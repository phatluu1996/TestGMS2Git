global.pause = false; // Always start not paused
PausedControl = 0; // Noone Control Paused
Selected = "x-buster" // Variable to iten selected
Choosed = false // Variable to freeze the menu temporarily while using the sub/weapon tanks

// Create the object that draws the pause menu objects.
if instance_number(objPauseDraw) == 0 
{
    instance_create(x,y,objPauseDraw);
}

