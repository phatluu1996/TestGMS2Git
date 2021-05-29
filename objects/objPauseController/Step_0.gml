/// @description  Visible
if global.pause == true {
    visible=true;
}
// This will make the Menu always start with the "XBUSTER" weapon selected.
if global.pause == false
{
    visible=false;
        Selected="x-buster"
}

/// Subtanks and Weapontanks Energy Fixes

/// Weapontanks Energy Fixes
if global.weapontank1_energy > 7 { global.weapontank1_energy=7 }
if global.weapontank2_energy > 7 { global.weapontank2_energy=7 }
// If no weapontank has been collected yet
if global.weapontanks=0 {
    global.weapontank1_energy=0; weaponTank1=false;
        global.weapontank2_energy=0; weaponTank2=false;
}
// If only 1 subtank has been collected
else
if global.weapontanks=1 {
    global.weapontank2_energy=0;
}
/// Subtanks Energy Fixes
if global.subtank1_energy > 7 { global.subtank1_energy=7 }
if global.subtank2_energy > 7 { global.subtank2_energy=7 }
if global.subtank3_energy > 7 { global.subtank3_energy=7 }
if global.subtank4_energy > 7 { global.subtank4_energy=7 }
// If no subtank has been collected yet
if global.subtanks=0 {
global.subtank1_energy=0; subTank1=false;
    global.subtank2_energy=0; subTank2=false;
        global.subtank3_energy=0; subTank3=false;
            global.subtank4_energy=0; subTank4=false;
}
// If only 1 subtank has been collected
if global.subtanks=1 {
    global.subtank2_energy=0; subTank2=false;
        global.subtank3_energy=0; subTank3=false;
            global.subtank4_energy=0; subTank4=false;
}
// If only 2 subtanks has been collected
if global.subtanks=2 {
    global.subtank3_energy=0; subTank3=false;
        global.subtank4_energy=0; subTank4=false;
}
// If only 3 subtanks has been collected
if global.subtanks=3 {
    global.subtank4_energy=0; subTank4=false;
}

/// Function of Jump, Shoot and Start Keys

/// Pressing START keys before Game Paused
// Control 1 Works Only if Player 1 Exists
if instance_number(global.player1) = 1 && keyboard_check_pressed(vk_enter) {
    if global.pause == false {global.pause=true;  PausedControl=1;}
}
// Control 2 Works Only if Player 2 Exists
if instance_number(global.player2) = 1 && keyboard_check_pressed(vk_space) {
    if global.pause == false {global.pause=true; PausedControl=2;}
}

if global.pause == true {

// Make sure that the buttons only work for the control that you pause.
if PausedControl == 1 {
P = 1 // Player Variable for Weapons Control
KEY_RELE_JUMP = keyboard_check_pressed(global.player1_key_jump);
KEY_RELE_SHOOT = keyboard_check_pressed(global.player1_key_shoot);
KEY_START = keyboard_check_pressed(global.player1_key_start);
KEY_LEFT = keyboard_check_pressed(global.player1_key_left);
KEY_RIGHT = keyboard_check_pressed(global.player1_key_right);
KEY_DOWN = keyboard_check_pressed(global.player1_key_down);
KEY_UP = keyboard_check_pressed(global.player1_key_up);
}
if PausedControl == 2 {
P = 2; // Player Variable for Weapons Control
KEY_RELE_JUMP = keyboard_check_pressed(global.player2_key_jump);
KEY_RELE_SHOOT = keyboard_check_pressed(global.player2_key_shoot);
KEY_START = keyboard_check_pressed(global.player2_key_start);
KEY_LEFT = keyboard_check_pressed(global.player2_key_left);
KEY_RIGHT = keyboard_check_pressed(global.player2_key_right);
KEY_DOWN = keyboard_check_pressed(global.player2_key_down);
KEY_UP = keyboard_check_pressed(global.player2_key_up);
}

if (KEY_RELE_JUMP) or (KEY_RELE_SHOT) or (KEY_START) {
// Using the WeaponTanks
    if Selected="weaponTank1"{if global.weapontank1_energy!=0{weaponTank1=true;}}
    if Selected="weaponTank2"{if global.weapontank2_energy!=0{weaponTank2=true;}}
// Using the SubTanks
    if Selected="subTank1"{if global.subtank1_energy!=0{subTank1=true;}}
    if Selected="subTank2"{if global.subtank2_energy!=0{subTank2=true;}}
    if Selected="subTank3"{if global.subtank3_energy!=0{subTank3=true;}}
    if Selected="subTank4"{if global.subtank4_energy!=0{subTank4=true;}}
// Choosing the Weapons
    if Selected="x-buster"{global.pause=false;}
    if Selected="weapon1"{global.Weapon[P]=1; global.pause=false; }
    if Selected="weapon2"{global.Weapon[P]=2; global.pause=false; }
    if Selected="weapon3"{global.Weapon[P]=3; global.pause=false; }
    if Selected="weapon4"{global.Weapon[P]=4; global.pause=false; }
    if Selected="weapon5"{global.Weapon[P]=5; global.pause=false; }
    if Selected="weapon6"{global.Weapon[P]=6; global.pause=false; }
    if Selected="weapon7"{global.Weapon[P]=7; global.pause=false; }
    if Selected="weapon8"{global.Weapon[P]=8; global.pause=false; }
} // end of function keys

} // end of Paused = true

/// Decrease Background Music Volume during Pause Menu
if sound_exists(global.snd_room){
    if global.pause = false {sound_volume(global.snd_room,.5);}
    if global.pause = true  {sound_volume(global.snd_room,0);}
}

/// Moving between options from the Pause Menu 
if global.pause == true {

// Up Keys
if (KEY_UP) and (Choosed=false) {sound_play(snd_selection)
switch (Selected) {
    case "x-buster": Selected="exit";break; 
    case "weapon1": Selected="x-buster";break; 
    case "weapon2": if global.stageclear1=true{Selected="weapon1"} else{Selected="weapon0"};break; 
    case "weapon3": if global.stageclear2=true{Selected="weapon2"} else if global.stageclear1=true{Selected="weapon1"} else{Selected="weapon0"};break; 
    case "weapon4": if global.stageclear3=true{Selected="weapon3"} else if global.stageclear2=true{Selected="weapon2"} else if global.stageclear1=true{Selected="weapon1"} else{Selected="weapon0"};break; 
    case "weapon5": if global.stageclear4=true{Selected="weapon4"} else if global.stageclear3=true{Selected="weapon3"} else if global.stageclear2=true{Selected="weapon2"} else if global.stageclear1=true{Selected="weapon1"} else{Selected="weapon0"};break; 
    case "weapon6": if global.stageclear5=true{Selected="weapon5"} else if global.stageclear4=true{Selected="weapon4"} else if global.stageclear3=true{Selected="weapon3"} else if global.stageclear2=true{Selected="weapon2"} else if global.stageclear1=true{Selected="weapon1"} else{Selected="weapon0"};break; 
    case "weapon7": if global.stageclear6=true{Selected="weapon6"} else if global.stageclear5=true{Selected="weapon5"} else if global.stageclear4=true{Selected="weapon4"} else if global.stageclear3=true{Selected="weapon3"} else if global.stageclear2=true{Selected="weapon2"} else if global.stageclear1=true{Selected="weapon1"} else{Selected="weapon0"};break; 
    case "weapon8": if global.stageclear7=true{Selected="weapon7"} else if global.stageclear6=true{Selected="weapon6"} else if global.stageclear5=true{Selected="weapon5"} else if global.stageclear4=true{Selected="weapon4"} else if global.stageclear3=true{Selected="weapon3"} else if global.stageclear2=true{Selected="weapon2"} else if global.stageclear1=true{Selected="weapon1"} else{Selected="weapon0"};break; 
    case "exit":    if global.stageclear8=true{Selected="weapon8"} else if global.stageclear7=true{Selected="weapon7"} else if global.stageclear6=true{Selected="weapon6"} else if global.stageclear5=true{Selected="weapon5"} else if global.stageclear4=true{Selected="weapon4"} else if global.stageclear3=true{Selected="weapon3"} else if global.stageclear2=true{Selected="weapon2"} else if global.stageclear1=true{Selected="weapon1"} else{Selected="weapon0"};break; 
    case "subTank1": ;break;
    case "subTank2": ;break;
    case "subTank3": ;break;
    case "subTank4": ;break;
    case "weaponTank1": ;break;
    case "weaponTank2": ;break;
}
}
// Down Keys
if (KEY_DOWN) and (Choosed=false) {sound_play(snd_selection)
switch (Selected) {
    case "x-buster": if global.stageclear1=true{Selected="weapon1"} else if global.stageclear2=true{Selected="weapon2"} else if global.stageclear3=true{Selected="weapon3"} else if global.stageclear4=true{Selected="weapon4"} else if global.stageclear5=true{Selected="weapon5"} else if global.stageclear6=true{Selected="weapon6"} else if global.stageclear7=true{Selected="weapon7"} else if global.stageclear8=true{Selected="weapon8"} else{Selected="exit"};break; 
    case "weapon1": if global.stageclear2=true{Selected="weapon2"} else if global.stageclear3=true{Selected="weapon3"} else if global.stageclear4=true{Selected="weapon4"} else if global.stageclear5=true{Selected="weapon5"} else if global.stageclear6=true{Selected="weapon6"} else if global.stageclear7=true{Selected="weapon7"} else if global.stageclear8=true{Selected="weapon8"} else{Selected="exit"};break; 
    case "weapon2": if global.stageclear3=true{Selected="weapon3"} else if global.stageclear4=true{Selected="weapon4"} else if global.stageclear5=true{Selected="weapon5"} else if global.stageclear6=true{Selected="weapon6"} else if global.stageclear7=true{Selected="weapon7"} else if global.stageclear8=true{Selected="weapon8"} else{Selected="exit"};break; 
    case "weapon3": if global.stageclear4=true{Selected="weapon4"} else if global.stageclear5=true{Selected="weapon5"} else if global.stageclear6=true{Selected="weapon6"} else if global.stageclear7=true{Selected="weapon7"} else if global.stageclear8=true{Selected="weapon8"} else{Selected="exit"};break; 
    case "weapon4": if global.stageclear5=true{Selected="weapon5"} else if global.stageclear6=true{Selected="weapon6"} else if global.stageclear7=true{Selected="weapon7"} else if global.stageclear8=true{Selected="weapon8"} else{Selected="exit"};break; 
    case "weapon5": if global.stageclear6=true{Selected="weapon6"} else if global.stageclear7=true{Selected="weapon7"} else if global.stageclear8=true{Selected="weapon8"} else{Selected="exit"};break; 
    case "weapon6": if global.stageclear7=true{Selected="weapon7"} else if global.stageclear8=true{Selected="weapon8"} else{Selected="exit"};break; 
    case "weapon7": if global.stageclear8=true{Selected="weapon8"} else{Selected="exit"};break; 
    case "weapon8": Selected="exit";break;
    case "exit": Selected="x-buster";break;
    case "subTank1": ;break; 
    case "subTank2": ;break; 
    case "subTank3": ;break; 
    case "subTank4": ;break; 
    case "weaponTank1": ;break; 
    case "weaponTank2": ;break;
}
}
// Right Keys
if (KEY_RIGHT) and (Choosed=false) {sound_play(snd_selection)
switch (Selected) {
    case "x-buster":  if global.weapontanks >=1{Selected="subTank1"};break;  
    case "weapon1": if global.subtanks!=0{Selected="subTank1"}else if global.subtanks=0 && global.weapontanks!=0{Selected="weaponTank1"};break; 
    case "weapon2": if global.subtanks!=0{Selected="subTank1"}else if global.subtanks=0 && global.weapontanks!=0{Selected="weaponTank1"};break; 
    case "weapon3": if global.subtanks!=0{Selected="subTank1"}else if global.subtanks=0 && global.weapontanks!=0{Selected="weaponTank1"};break; 
    case "weapon4": if global.subtanks!=0{Selected="subTank1"}else if global.subtanks=0 && global.weapontanks!=0{Selected="weaponTank1"};break; 
    case "weapon5": if global.subtanks!=0{Selected="subTank1"}else if global.subtanks=0 && global.weapontanks!=0{Selected="weaponTank1"};break; 
    case "weapon6": if global.subtanks!=0{Selected="subTank1"}else if global.subtanks=0 && global.weapontanks!=0{Selected="weaponTank1"};break; 
    case "weapon7": if global.subtanks!=0{Selected="subTank1"}else if global.subtanks=0 && global.weapontanks!=0{Selected="weaponTank1"};break; 
    case "weapon8": if global.subtanks!=0{Selected="subTank1"}else if global.subtanks=0 && global.weapontanks!=0{Selected="weaponTank1"};break; 
    case "exit":    if global.subtanks!=0{Selected="subTank1"}else if global.subtanks=0 && global.weapontanks!=0{Selected="weaponTank1"};break; 
    case "subTank1": if global.subtanks>1{Selected="subTank2"};break;
    case "subTank2": if global.subtanks>2{Selected="subTank3"};break;
    case "subTank3": if global.subtanks>3{Selected="subTank4"};break;
    case "subTank4": if global.weapontanks!=0{Selected="weaponTank1"};break;
    case "weaponTank1": if global.weapontanks>1{Selected="weaponTank3"} else if global.subtanks >=1{Selected="subTank1"};break; 
    case "weaponTank2": if global.subtanks >=1{Selected="subTank1"}else{Selected="weaponTank1"};break; 
}
}
// Left Keys
if (KEY_LEFT) and (Choosed=false) {sound_play(snd_selection)
switch (Selected) {
    case "subTank1": {Selected="x-buster"};break; 
    case "subTank2": {Selected="subTank1"};break; 
    case "subTank3": {Selected="subTank2"};break; 
    case "subTank4": {Selected="subTank3"};break; 
    case "weaponTank1": {if global.subtanks=4 {selected="subTank4"}else if global.subtanks=3 {selected="subTank3"}else if global.subtanks=2 {selected="subTank2"}else if global.subtanks=1 {selected="subTank1"}else if global.subtanks=0 {selected="x-buster"}};break; 
    case "weaponTank2": {Selected="weaponTank1"};break; 
}
}
}

