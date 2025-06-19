weak_point_list = ds_list_create();

initial_xscale = image_xscale;
initial_yscale = image_yscale;

pv = max_pv;

cooldown = attack_cooldown;

life_bar_sprite = UI_HealthBar;
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

// mouvement
y_base = y;       
x_base = x;       

function vertical_osilation()
{
    y = y_base + sin(current_time * y_osc_speed) * y_osc_range;
}

function horizontal_osilation()
{
    x = x_base + sin(current_time * x_osc_speed) * x_osc_range;
}


attack_timer = 0;
attack_duration = 30; // 0.5 seconde à 60 FPS
is_attacking = false;
function perform_attack()
{
    instance_find(obj_health_bar,0).modify_health_value(-damages); 
	
	is_attacking = true;
    attack_timer = 0;
	//kill_entity();
}













