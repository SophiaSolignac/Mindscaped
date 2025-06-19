weak_point_list = ds_list_create();
pv = max_pv;



function hit_check()
{
	if (pv <= 0) instance_destroy();
}