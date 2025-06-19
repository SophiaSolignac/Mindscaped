function scr_hit_monsters(value)  
{
    with (obj_enemy_parent) {
        if (place_meeting(x, y, other)) {
            pv -= value;
            hit_check(); // Appelle une fonction dans l’ennemi s’il meurt
            show_debug_message("Touché : -" + string(value));
        }
    }
}