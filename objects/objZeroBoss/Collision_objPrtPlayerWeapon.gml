var __b__;
__b__ = action_if_variable(isDefense, false, 0);
if __b__
{
{
script_execute(BossTakeDamage,0,0,0,0,0);
{
action_sound(-1, 0);
with (other) {
destroy = true;
}
}
}
}
