if (instance_exists(obj_enemy_parent))
{
	owner = instance_nearest(x, y, obj_enemy_parent);
	ds_list_add(owner.weak_point_list,id)
	
	offset_x = x - owner.x;
	offset_y = y - owner.y;

}
else instance_destroy();

if (!place_meeting(x, y, obj_enemy_parent)) {
    instance_destroy(); // Se détruit si plus en contact avec son parent
}