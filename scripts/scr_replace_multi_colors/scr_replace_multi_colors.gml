function scr_replace_multi_colors(argument0, argument1, argument2) {
	sprite = argument0;
	originalColors = argument1;
	replaceColors = argument2;     

	if(ds_list_size(originalColors) > 0 && ds_list_size(originalColors) == ds_list_size(replaceColors)){
	    for (i=0; i < ds_list_size(originalColors); i+=1)
	    {
	        scr_replace_color(sprite, ds_list_find_value(originalColors, i), ds_list_find_value(replaceColors, i));
	    };
	}



}
