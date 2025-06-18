rotation_speed = .2;
spel_radius = 1;

image_blend = normal_color;


// if (instance_exists(obj_singleton)) {
//    instance_destroy();
//} else {
//    persistent = true;
//}

function set_size(radius) {
    image_xscale = radius;
	image_yscale = radius;
}