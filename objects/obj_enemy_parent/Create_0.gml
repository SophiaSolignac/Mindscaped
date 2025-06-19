weak_point_list = ds_list_create();


pv = max_pv;


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


x_base = x;
y_base = y;

x_osc_speed = 0.03;   // Vitesse d’oscillation horizontale
x_osc_range = 8;      // Amplitude horizontale

y_osc_speed = 0.04;   // Vitesse d’oscillation verticale
y_osc_range = 12;     // Amplitude verticale

function vertical_osilation()
{
	y = y_base + sin(current_time * y_osc_speed) * x_osc_range;
}

function horizontal_osilation()
{
	x = x_base + sin(current_time * x_osc_speed) * x_osc_range;
}

