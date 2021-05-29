if instance_exists(FadeIn) or instance_exists(FadeOut)
{
exit;
}

/// Keys Up And Down Player 1 ==================================================
global.play_chr1 = c_sel1;

if global.player1_lives != 0 {
/// Pressing Up Key
if (keyboard_check(global.player1_key_up)) { 
if c_sel1 == 0 {sound_play(snd_selection); if c_sel2 != 14 {c_sel1=14;}else{c_sel1=13;}}
if c_sel1 == 1 {sound_play(snd_selection); if c_sel2 != 14 {c_sel1=14;}else{c_sel1=13;}}
if c_sel1 == 2 {sound_play(snd_selection); if c_sel2 != 1  {c_sel1=1}else{c_sel1=14;}}
if c_sel1 >= 3 {sound_play(snd_selection); if c_sel2 != c_sel1-1 {c_sel1-=1}else{c_sel1-=2;}}
}
/// Pressing Down Key
if (keyboard_check(global.player1_key_down)) {
if c_sel1 == 0 {sound_play(snd_selection); if c_sel2 != 1 {c_sel1=1;}else{c_sel1=2;}}
if c_sel1 == 14 {sound_play(snd_selection); if c_sel2 != 1 {c_sel1=1;}else{c_sel1=2;}}
if c_sel1 == 13 {sound_play(snd_selection); if c_sel2 != 14 {c_sel1=14}else{c_sel1=1;}}
if c_sel1 <= 12 {sound_play(snd_selection); if c_sel2 != c_sel1+1 {c_sel1+=1}else{c_sel1+=2;}}
}
}
/// Keys Up And Down Player 2 ===================================================
global.play_chr2 = c_sel2;

if global.game_mode != 1 && global.player2_lives != 0 {
/// Pressing Up Key
if (keyboard_check(global.player2_key_up)) { 
if c_sel2 == 0 {sound_play(snd_selection); if c_sel1 != 14 {c_sel2=14;}else{c_sel2=13;}}
if c_sel2 == 1 {sound_play(snd_selection); if c_sel1 != 14 {c_sel2=14;}else{c_sel2=13;}}
if c_sel2 == 2 {sound_play(snd_selection); if c_sel1 != 1  {c_sel2=1}else{c_sel2=14;}}
if c_sel2 >= 3 {sound_play(snd_selection); if c_sel1 != c_sel2-1 {c_sel2-=1}else{c_sel2-=2;}}
}
/// Pressing Down Key
if (keyboard_check(global.player2_key_down)) {
if c_sel2 == 0 {sound_play(snd_selection); if c_sel1 != 1 {c_sel2=1;}else{c_sel2=2;}}
if c_sel2 == 14 {sound_play(snd_selection); if c_sel1 != 1 {c_sel2=1;}else{c_sel2=2;}}
if c_sel2 == 13 {sound_play(snd_selection); if c_sel1 != 14 {c_sel2=14}else{c_sel2=1;}}
if c_sel2 <= 12 {sound_play(snd_selection); if c_sel1 != c_sel2+1 {c_sel2+=1}else{c_sel2+=2;}}
}
}
/// Keys ENTER/SPACE ==============================================================
// 1 Player Mode
if global.game_mode=1 
{
    // Timer for flashing "PRESS SPACE P2" text on screen
    timer += 1; 
        if timer > 10 { timer=1 } // Loop
// Player 1 Pressing ENTER key
if keyboard_check(global.player1_key_start) 
{
    if c_sel1 !=0 { scrNextMenu(room_loading); }
}
// Player 1 Pressing SPACE key
if keyboard_check(global.player2_key_start) { global.game_mode=2; } //  2 Players Coop
}
// Modes 2 Players CoOp And 2 Players Versus
if global.game_mode != 1 {
// Pressing START at any of the controls
if keyboard_check(global.player1_key_start) or keyboard_check(global.player2_key_start) {
    if c_sel1 != 0 && c_sel2 != 0 { scrNextMenu(room_loading) }
    }
}
/// RETURN to previous menu. (DISABLED) =========================================
/*
KEY_DASH_P1 = keyboard_check(global.player1_key_dash)
KEY_DASH_P2 = keyboard_check(global.player2_key_dash)

if (KEY_DASH_P1) or (KEY_DASH_P2) { 
  if global.nextroom=room_intro_stage01 { global.nextroom=main_menu; scrNextMenu(room_loading); } 
  if global.nextroom=room_versus { global.nextroom=main_menu; scrNextMenu(room_loading); } 
  if global.nextroom=room_stage_01 { global.nextroom=stage_select; scrNextMenu(room_loading); }
  if global.nextroom=room_stage_02 { global.nextroom=stage_select; scrNextMenu(room_loading); }
  if global.nextroom=room_stage_03 { global.nextroom=stage_select; scrNextMenu(room_loading); }
  if global.nextroom=room_stage_04 { global.nextroom=stage_select; scrNextMenu(room_loading); }
  if global.nextroom=room_stage_05 { global.nextroom=stage_select; scrNextMenu(room_loading); }
  if global.nextroom=room_stage_06 { global.nextroom=stage_select; scrNextMenu(room_loading); }
  if global.nextroom=room_stage_07 { global.nextroom=stage_select; scrNextMenu(room_loading); }
  if global.nextroom=room_stage_08 { global.nextroom=stage_select; scrNextMenu(room_loading); }
}// keys START end

/* */
/*  */
