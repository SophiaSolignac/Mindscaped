rotation_speed = .2;

if (!variable_global_exists("singleton_exists") || !global.singleton_exists) {
    global.singleton_exists = true;
    global.singleton_instance = id;
    persistent = true;
} else {
    instance_destroy();
}

// if (instance_exists(obj_singleton)) {
//    instance_destroy();
//} else {
//    persistent = true;
//}