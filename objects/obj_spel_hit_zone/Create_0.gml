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

function hit_litle_punsh(damages)
{
	scr_hit_monsters(damages);
}

function scr_hit_monsters_weaknes(value,crit_mult)  
{
    with (obj_weakspot) {
        if (place_meeting(x, y, other)) {
            if (instance_exists(owner)) {
                owner.pv -= value * crit_mult; // double damage
                owner.hit_check();    // vérifie si le parent meurt
            }
            show_debug_message("Weakspot touché : -" + string(value * crit_mult));
			exit;
        }
    }
	
	    // Sinon, attaque normale
    var hit = instance_place(x, y, obj_enemy_parent);
    if (hit != noone) {
        with (hit) {
            pv -= value;
            hit_check();
			
			show_debug_message("Weakspot pas touché : -" + string(value));
        }
    }
}