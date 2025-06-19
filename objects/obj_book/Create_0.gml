// globals
page_w = 900; 
page_h = 250;

enter_title_h = 32;
enter_h = 64;

actual_page = 1;

health_bar = instance_find(obj_health_bar,0);
mana_bar = instance_find(obj_sanity_bar,0)

spel_init();



ds_list_add(sples_list,spel_zero);
ds_list_add(sples_list,spel_one);
ds_list_add(sples_list,spel_tow);
ds_list_add(sples_list,spel_tree);
ds_list_add(sples_list,spel_four);

function stop_Pages()
{
	image_index = 0;
	page_is_turning = false;
	
	turning_page_direction = 0;
	image_speed = normal_speed * turning_page_direction;
	
	change_page();
}



// animation
normal_speed = image_speed;

turning_page_direction = 0;

image_speed = 0;
page_is_turning = false;

function Turn_Page_Right()
{
	if (actual_page < ds_list_size(sples_list))
	{
		turning_page_direction = 1;
		image_speed = normal_speed * turning_page_direction;
		page_is_turning = true;
		
		
	}
	
}


function Turn_Page_Left()
{
	if (actual_page > 1)
	{
		turning_page_direction = -1;
		image_speed = normal_speed * turning_page_direction;
	
		if (!page_is_turning) image_index = image_number -1;
		
		page_is_turning = true;
		
	}
}

hit_spel_object = instance_exists(obj_spel_hit_zone);

function change_page() {
    var spell = sples_list[| actual_page - 1];

    if (is_undefined(spell) || !ds_map_exists(spell, "rad")) {
        if (variable_global_exists("singleton_instance") && instance_exists(global.singleton_instance)) {
            with (global.singleton_instance) {
                instance_destroy();
            }
            global.singleton_instance = noone;
            global.singleton_exists = false;
        }
        return;
    }

    var rad = spell[? "rad"];

    var old = instance_nearest(mouse_x, mouse_y, obj_spel_hit_zone); 

    if (instance_exists(old)) {
        with (old) {
            instance_destroy();
        }
    }

    var new_hitbox = instance_create_layer(mouse_x, mouse_y, "Instances", obj_spel_hit_zone);

    if (instance_exists(new_hitbox)) {
        new_hitbox.set_size(rad); 
    }

    global.singleton_instance = new_hitbox;
    global.singleton_exists = true;
}


function lunch_spel()
{
	var spell = sples_list[| actual_page - 1];
	
	if((spell[? "cost"] > 0)  && (!mana_bar.check_mana_rent(spell[? "cost"]))) return;
	
	switch(spell)
	{
		case spel_zero: show_debug_message("++"); 
		
		break;
		
		
		case spel_one: 
			scr_punsh_weaknes(spell);
		break;
		
		
		case spel_tow: show_debug_message("cc");
		
		break;
		
		
		case spel_tree: show_debug_message("dd"); 
		
		break;
		
		
		case spel_four: 
		
		//show_debug_message("magic cloud"); 
		
		scr_punsh(spell);
		
		break;
	}
	
	mana_bar.modify_health_value(spell[? "cost"] * -1);
}
