var __b__;
__b__ = action_if_variable(state, "rollingShieldVert", 0);
if __b__
{
{
action_bounce(1, 1);
if rollShield_timer > 10 {ricochetTimes+=1; rollShield_timer=0;}

}
}
else
{
__b__ = action_if_variable(state, "rollingShieldHor", 0);
if __b__
{
{
__b__ = action_if_variable(image_xscale, 1, 0);
if __b__
{
{
action_move_contact(0, -1, 1);
action_set_vspeed(0);
action_set_hspeed(0);
timer = 100;
}
}
__b__ = action_if_variable(image_xscale, -1, 0);
if __b__
{
{
action_move_contact(180, -1, 1);
action_set_hspeed(0);
action_set_vspeed(0);
timer = 100;
}
}
}
}
}
