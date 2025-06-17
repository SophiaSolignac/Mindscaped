dung_min_lenth = 10;
dung_max_lenth = 20;

dung_min_hight = 10;
dung_max_hight = 20;

room_transisioning = false;
transoition_dir = 0;


curent_room_Data = instance_find(obj_Room_Data, 0);
nex_direction = curent_room_Data.targ_room_forward;



grid_width = random_range(dung_min_lenth,dung_max_lenth);
grid_height = random_range(dung_min_hight,dung_max_hight);

dungeon = ds_map_create();



for ( i = 0; i < grid_width; i++) {
    for ( j = 0; j < grid_height; j++) {
        show_debug_message("Cell_" + string(x) + "_" + string(y));
		
		
    }
}

zoom = 1;
zoom_speed = 0.05;

door_list[0]= Door_Wood_Open1;
door_list[1]= Door_Wood_Open2;
door_list[2]= Door_Wood_Open3;
door_list[3]= Door_Wood_Open4;
door_list[4]= Door_Wood_Open5;


function play_transition_sound()
{
	if (curent_room_Data.is_stairs)
	global.PlaySFX(Down_Stairs);
	
else {
			global.PlaySFX(Door_Wood_Open4);
		}
}
	
