camera = view_get_camera(0);

center_x = room_width / 2;
center_y = room_height / 2;

camera_initial_w = room_width;
camera_initial_h = room_height;

zoom_speed = 4;

function transition_zoom()
{
	var cam_W = camera_get_view_width(camera);
	var cam_H = camera_get_view_height(camera);

	cam_W = max(cam_W - zoom_speed, 100);
	cam_H = max(cam_H - zoom_speed / 2, 100);

	camera_set_view_size(camera, cam_W, cam_H);	
	
	
	var new_camX = center_x - cam_W / 2;
	var new_camY = center_y - cam_H / 2;

	camera_set_view_pos(camera, new_camX, new_camY);
}

