// globals
page_w = 200; 
page_h = 150;

enter_h = 30;

actual_page = 1;

// sors 
sples_list = ds_list_create();


// Sors 1
var spel_one = ds_map_create();

spel_one[? "name"] = "Magic punsh";
spel_one[? "cost"] = 0;
spel_one[? "dmg"] = 5;

spel_one[? "desc"] = "powerless but rentable";


// Sors 2
var spel_tow = ds_map_create();

spel_tow[? "name"] = "Fierball";
spel_tow[? "cost"] = 11;
spel_tow[? "dmg"] = 30;

spel_tow[? "desc"] = "powerfull but expensive";

// Sors 3
var spel_tree = ds_map_create();

spel_tree[? "name"] = "Restoration";
spel_tree[? "cost"] = 0;
spel_tree[? "dmg"] = 0;

spel_tree[? "rec_mana"] = 10;

spel_tree[? "desc"] = "Hit an enemy restor your mana by ";

// Sors 4
var spel_four = ds_map_create();

spel_four[? "name"] = "powerfull";
spel_four[? "cost"] = 8;
spel_four[? "dmg"] = 10;

spel_four[? "desc"] = "power less but hit in zoon";



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