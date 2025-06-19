function scr_crit_hit(value){
    // Vérifie si un weakspot est touché
    var ws = instance_place(x, y, obj_weakspot);
    if (ws != noone) {
        if (instance_exists(ws.owner)) {
			instance_destroy(ws);
            //with (ws.owner) {
            //    pv -= value * 2;
            //    hit_check();
            //}
			
        }
        exit; // on ne continue pas si weakspot touché
    }

    // Sinon, attaque normale
    var hit = instance_place(x, y, obj_enemy_parent);
    if (hit != noone) {
        with (hit) {
            pv -= value;
            hit_check();
        }
    }
}