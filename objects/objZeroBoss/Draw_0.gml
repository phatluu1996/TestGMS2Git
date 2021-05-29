/// @description  Draw Sprite And Health Bar

if inActive = true {
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,1)
    drawOldHealthBar(32,hp,LB_SIGMA,3)
    draw_text(bbox_left, bbox_top, string_hash_to_newline("State:"+string(state)+" "+"Timer:"+string(timer)));
    draw_text(bbox_left, bbox_bottom, string_hash_to_newline("HP:"+string(hp)+" "+"SprSpd:"+string(image_speed)));
}

