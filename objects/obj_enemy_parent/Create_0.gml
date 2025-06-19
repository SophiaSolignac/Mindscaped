weak_point_list = ds_list_create();


pv = max_pv;

//if(is_current_room_without_enemies)
//{
//	dispawn()
//}



function hit_check()
{
	if (pv <= 0) kill_entity(); 
}

function dispawn()
{
	instance_destroy();
	//ds_list_add(global.enemys_dead, uid);
}

function kill_entity()
{
	//ds_list_add(global.enemys_dead, uid);
	instance_destroy();
	if (instance_number(obj_enemy_parent) == 0) global.room_figting = false;
}



function is_current_room_without_enemies() {
   // if (!variable_global_exists("global.rooms_without_enemies")) {
   //     return false;
   // }
   // 
   // return (ds_list_find_index(global.rooms_without_enemies, room) != -1);
}