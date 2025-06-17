
// direction condition

if(!room_transisioning)
{
if (keyboard_check_pressed(vk_right))
{
	if (curent_room_Data.door_right) 
	{
		show_debug_message("door_right");
		nex_direction = (curent_room_Data.targ_room_right)
		
		transoition_dir = 1;
		room_transisioning = true;
		alarm_set(0, obj_cam_manager.transition_duration);
	}
};


if (keyboard_check_pressed(vk_up))
{
	if (curent_room_Data.door_forward) 
	{
		show_debug_message("door_up");
		nex_direction = (curent_room_Data.targ_room_forward)
		
		transoition_dir = 0;
		room_transisioning = true;
		alarm_set(0, obj_cam_manager.transition_duration);

	}
};


if (keyboard_check_pressed(vk_left))
{
	if (curent_room_Data.door_left)
	{
		show_debug_message("door Left");
		nex_direction = (curent_room_Data.targ_room_left)
		
		transoition_dir = -1;
		room_transisioning = true;
		alarm_set(0, obj_cam_manager.transition_duration);

	}
};


if (keyboard_check_pressed(vk_down))
{
	if (curent_room_Data.door_back) 
	{
		show_debug_message("door_Back");
		nex_direction = (curent_room_Data.targ_room_back)
		
		transoition_dir = 0;
		room_transisioning = true;
		alarm_set(0, obj_cam_manager.transition_duration);

	}
};

if (obj_cam_manager.fadeLevel > 0)obj_cam_manager.fadeLevel -= 0.02;
}
else
{
	obj_cam_manager.transition_zoom(transoition_dir);
}
