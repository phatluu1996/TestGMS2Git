if(!on){
    particleSystem = part_system_create();
    part_system_depth(particleSystem, depth + 1);
    partTypeShadow = part_type_create();
    part_type_size(partTypeShadow, 1, 1, 0, 0);
    part_type_life(partTypeShadow, 15, 15);
    part_type_alpha3(partTypeShadow, 0.8, 0.6, 0.4);
    
    part_type_color1(partTypeShadow, color);
    part_type_sprite(partTypeShadow,sprite_index, 1, 0, 0);
    part_type_scale(partTypeShadow, image_xscale, image_yscale);
    part_type_blend(partTypeShadow, true);
    part_particles_create(particleSystem, x, y, partTypeShadow, 1);
    on = true;
}

