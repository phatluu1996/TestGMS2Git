var __b__;
__b__ = action_if_variable(other.poder, 1, 2);
if __b__
{
{
action_kill_object();
}
}
else
{
{
action_sound(-1, 0);
with (other) {
destroy = true;
}
}
}
