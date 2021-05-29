script_execute(BossDamageEvent,0,0,0,0,0);
var __b__;
__b__ = action_if_variable(obj_storm_eagle.hp, 1, 1);
if __b__
{
{
speed = 0;
action_set_hspeed(0);
action_set_vspeed(0);
obj_storm_eagle.sprite_index = self.sprite_index;
obj_storm_eagle.image_index = self.image_index;
obj_storm_eagle.image_xscale = self.image_xscale;
obj_storm_eagle.image_blend = c_black;
obj_storm_eagle.x = self.x;
obj_storm_eagle.y = self.y;
action_kill_object();
}
}
