function scr_create_wall_dust() {
	var box;
	var obj;
	if(instance_position(x + image_xscale * 9, bbox_top + 4, objPrtSolid) >= 0){
	    obj = instance_create(x + image_xscale * 7, bbox_top + 4, objEffect);
	    obj.target = id;
	    obj.depth = depth - 1;
	    obj.sprite_index = spr_wall_dust;
	    obj.image_xscale = image_xscale;
	}


}
