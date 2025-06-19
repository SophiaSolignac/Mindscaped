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

// Détermine automatiquement le type d'ennemi
enemy_type = "undefined";

// Associe chaque objet enfant à un type
switch (object_index) {
    case obj_bat: enemy_type = "bat"; break;
    case obj_Chonk_frog: enemy_type = "chonk_frog"; break;
    case obj_Ferret: enemy_type = "ferret"; break;
    case obj_Frog: enemy_type = "frog"; break;
    case obj_Spectr: enemy_type = "spectr"; break;
    case obj_Crab: enemy_type = "crab"; break;
}

// Joue le son d'apparition correspondant
if (enemy_type != "undefined") {
    global.PlayEnemySFX(enemy_type, "spawn");
} else {
    show_debug_message("Type d'ennemi non reconnu: " + string(object_index));
}