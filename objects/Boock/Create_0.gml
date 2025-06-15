// globals
page_w = 140; 
page_h = 200;

enter_h = 10;

// sors 
sples_list = ds_list_create();
actual_page = 1;

spels_name[0] = "test_Spel_111 111111111 1111111 111111 1 11111111 1  11111 111 11 11 1 1 111 11 1 11111";
spels_name[1] = "test_Spel_2";
spels_name[2] = "test_Spel_3";

ds_list_add(sples_list,spels_name[0]);
ds_list_add(sples_list,spels_name[1]);
ds_list_add(sples_list,spels_name[2]);

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