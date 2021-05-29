function draw_stats() {
	draw_self();
	draw_text(bbox_left, bbox_top, string_hash_to_newline("State:"+string(state)+" "+"Timer:"+string(timer)));
	draw_text(bbox_left, bbox_bottom, string_hash_to_newline("HP:"+string(hp)+" "+"SprSpd:"+string(image_speed)));


}
