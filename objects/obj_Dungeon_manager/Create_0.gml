dung_min_lenth = 10;
dung_max_lenth = 20;

dung_min_hight = 10;
dung_max_hight = 20;

curent_room_Data = instance_find(obj_Room_Data, 0);

grid_width = random_range(dung_min_lenth,dung_max_lenth);
grid_height = random_range(dung_min_hight,dung_max_hight);

dungeon = ds_map_create();



for ( i = 0; i < grid_width; i++) {
    for ( j = 0; j < grid_height; j++) {
        show_debug_message("Cell_" + string(x) + "_" + string(y));
		
		
    }
}