if(page_is_turning)
{
	//show_debug_message(")
	if (turning_page_direction == 1 && image_index >= image_number - 1)
		{
		actual_page ++;
			
		stop_Pages();

		}
	
	
	if(turning_page_direction == -1 && image_index <= 1)
		{
		actual_page --;
			
		stop_Pages();
		}
		
	//show_debug_message(actual_page);
}

if (mouse_check_button_pressed(mb_left))
{
	lunch_spel();
}

