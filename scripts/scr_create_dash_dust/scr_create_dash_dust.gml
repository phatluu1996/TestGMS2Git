function scr_create_dash_dust() {
	var obj;
	obj = instance_create(x - image_xscale * 10, y, objEffect);
	obj.target = id;
	obj.sprite_index = spr_dash_dust;
	obj.image_xscale = image_xscale;



}
