// globals
page_w = 200; 
page_h = 150;

enter_h = 30;

actual_page = 1;

// sors 
sples_list = ds_list_create();

// spel zero
spel_zero = ds_map_create();

spel_zero[? "name"] = "Interact";
spel_zero[? "cost"] = 0;
spel_zero[? "dmg"] = 0;


spel_zero[? "desc"] = "---";

// Sors 1
spel_one = ds_map_create();

spel_one[? "name"] = "Magic punsh";
spel_one[? "cost"] = 0;
spel_one[? "dmg"] = 5;

spel_one[? "rad"] = .3;

spel_one[? "desc"] = "powerless but rentable";


// Sors 2
spel_tow = ds_map_create();

spel_tow[? "name"] = "Fierball";
spel_tow[? "cost"] = 11;
spel_tow[? "dmg"] = 30;

spel_tow[? "rad"] = .3;

spel_tow[? "desc"] = "powerfull but expensive";

// Sors 3
spel_tree = ds_map_create();

spel_tree[? "name"] = "Heal";
spel_tree[? "cost"] = 10;
spel_tree[? "dmg"] = 0;

spel_tree[? "rec_life"] = 20;

spel_tree[? "desc"] = "Hit an enemy restor your mana by ";

// Sors 4
spel_four = ds_map_create();

spel_four[? "name"] = "magic cloud";
spel_four[? "cost"] = 8;
spel_four[? "dmg"] = 10;

spel_four[? "rad"] = 2.5;

spel_four[? "desc"] = "power less but hit in zoon";



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
