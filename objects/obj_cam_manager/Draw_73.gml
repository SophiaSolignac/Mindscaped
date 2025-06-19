if (obj_Dungeon_manager.room_transisioning || fadeLevel > 0)
{
	draw_set_color(c_black);
	draw_set_alpha(fadeLevel);
	draw_rectangle(-100, -100, room_width + 100,room_height +100,false)
	
	draw_set_alpha(1);
}