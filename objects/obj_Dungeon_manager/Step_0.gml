
// direction condition

if(!room_transisioning)
{
if (keyboard_check_pressed(vk_right))
{
	if (curent_room_Data.door_right) 
	{
		if (!can_transitioning()) return;
		
		show_debug_message("door_right");
		nex_direction = (curent_room_Data.targ_room_right)
		
		transoition_dir = 1;
		start_transition();
	}
};


if (keyboard_check_pressed(vk_up))
{
	if (curent_room_Data.door_forward) 
	{
		if (!can_transitioning()) return;
		
		show_debug_message("door_up");
		nex_direction = (curent_room_Data.targ_room_forward)
		
		transoition_dir = 0;
		start_transition();
		

	}
};


if (keyboard_check_pressed(vk_left))
{
	if (curent_room_Data.door_left)
	{
		if (!can_transitioning()) return;
		
		show_debug_message("door Left");
		nex_direction = (curent_room_Data.targ_room_left)
		
		transoition_dir = -1;
		start_transition();
	}
};


if (keyboard_check_pressed(vk_down))
{
	if (curent_room_Data.door_back) 
	{
		if (!can_transitioning()) return;
		
		show_debug_message("door_Back");
		nex_direction = (curent_room_Data.targ_room_back)
		
		transoition_dir = 0;
		start_transition();

	}
};

if (obj_cam_manager.fadeLevel > 0)obj_cam_manager.fadeLevel -= 0.02;
}
else
{
	obj_cam_manager.transition_zoom(transoition_dir);
}

