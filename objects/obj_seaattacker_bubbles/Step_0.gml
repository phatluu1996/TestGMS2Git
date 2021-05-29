/// @description  Sea Attacker Bubbles (Bolhas do Cavalo Marinho)
/// @param Bolhas do Cavalo Marinho

ymax = 70 + 64 // Distance to move
x = xstart // no change

// Movement to the up
if state="idle" {sprite_index=spr_seaattacker_bubbles; 
    if y > ystart - ymax {y-=2;}
    else
    if y <= ystart - ymax {y = ystart - ymax;}
    if y = ystart - ymax {state="stop";}
    }
// Stopped
if state="stop" {
    sprite_index = spr_seaattacker_bubbles; 
        image_speed=0.1;
            // Destroy and Create the SeaAttacker in Destroy Event
            if image_index > image_number-1 {instance_destroy();}
}

