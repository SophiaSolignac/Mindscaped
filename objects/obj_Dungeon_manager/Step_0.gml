
// direction condition
if (keyboard_check_pressed(vk_right))
{
	if (curent_room_Data.door_right) 
	{
		show_debug_message("door_right");
		
		room_goto(curent_room_Data.targ_room_right)
	}
};


if (keyboard_check_pressed(vk_up))
{
	if (curent_room_Data.door_forward) 
	{
		show_debug_message("door_up");
		
		room_goto(curent_room_Data.targ_room_forward)
	}
};


if (keyboard_check_pressed(vk_left))
{
	if (curent_room_Data.door_left)
	{
		show_debug_message("door Left");
		
		room_goto(curent_room_Data.targ_room_left)
	}
};


if (keyboard_check_pressed(vk_down))
{
	if (curent_room_Data.door_back) 
	{
		show_debug_message("door_Back");
	
		room_goto(curent_room_Data.targ_room_back)

	}
};