draw_self();
for (i=0; i < path_get_number(path); i+=1)
{
    xx = ds_list_find_value(X, i);
    yy = ds_list_find_value(Y, i);
    draw_text(xx, yy, string_hash_to_newline("x:"+string(xx)+" "+"y:"+string(yy)));
}

