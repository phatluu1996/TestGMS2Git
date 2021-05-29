X = ds_list_create();
Y = ds_list_create();
ds_list_add(X, x + 120);
ds_list_add(X, x + 196);
ds_list_add(X, x + 196);
ds_list_add(X, x + 3);
ds_list_add(X, x + 3);


ds_list_add(Y, y + 3);
ds_list_add(Y, y + 3);
ds_list_add(Y, y + 226);
ds_list_add(Y, y + 226);
ds_list_add(Y, y + 120);


path = path_add();
for (i = 0; i < ds_list_size(X); i+=1)
{
    path_add_point(path, ds_list_find_value(X, i), ds_list_find_value(Y, i), 8);   
};


 


