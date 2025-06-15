// sors 
sples_list = ds_list_create();
actual_page = 1;

ds_list_add(sples_list,"test_Spel");
ds_list_add(sples_list,"test_Spel2");
ds_list_add(sples_list,"test_Spel3");

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