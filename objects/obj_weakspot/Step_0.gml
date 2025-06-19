if (instance_exists(owner)) {
    x = owner.x + offset_x;
    y = owner.y + offset_y;
} else {
    instance_destroy();
}