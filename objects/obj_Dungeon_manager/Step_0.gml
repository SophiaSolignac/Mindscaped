
// direction condition
if (keyboard_check_pressed(vk_right))
{
	if (door_right) 
	{
		show_debug_message("door_right");
		show_debug_message(curent_room_Data.aaa);
	}
};


if (keyboard_check_pressed(vk_up))
{
	if (door_forward) show_debug_message("door_up");
	show_debug_message(current_room_data.bbb);

};


if (keyboard_check_pressed(vk_left))
{
	if (door_left) show_debug_message("door Left");
	show_debug_message(curent_room_Data.ccc);
};


if (keyboard_check_pressed(vk_down))
{
	if (door_back) show_debug_message("door_Back");
	show_debug_message(curent_room_Data.ddd);
};