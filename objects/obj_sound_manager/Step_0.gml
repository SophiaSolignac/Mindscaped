// INITIALISATION
if (current_floor == -1) {
    current_floor = global.current_floor;
    global.current_music = audio_play_sound(music_by_floor[global.current_floor], 1, true);
    show_debug_message("START | Musique exploration (ID:" + string(global.current_music) + ")");
    global.fade_progress = -1; // Désactive le fade
}

// GESTION FADE OUT/IN (s'exécute à chaque frame)
if (global.fade_progress >= 0) {
    global.fade_progress += 0.05; // Vitesse du fade (ajuster si besoin)
    
    if (global.fade_type == "out") {
        var vol = 1 - global.fade_progress;
        audio_sound_gain(global.fade_target, vol, 0);
        
        if (global.fade_progress >= 1) {
            audio_stop_sound(global.fade_target);
            global.fade_progress = -1; // Désactive le fade
        }
    }
    else if (global.fade_type == "in") {
        var vol = global.fade_progress;
        audio_sound_gain(global.fade_target, vol, 0);
        
        if (global.fade_progress >= 1) {
            global.fade_progress = -1; // Désactive le fade
        }
    }
}

// DÉTECTION COMBAT
if (instance_exists(obj_enemy_parent)) {
    if (!global.room_fighting) {
        global.room_fighting = true;
        
        // Lance le fade out
        if (global.current_music != -1) {
            global.fade_target = global.current_music;
            global.fade_type = "out";
            global.fade_progress = 0;
        }
        
        // Joue musique combat après fade out (via le système de fade)
        global.next_music = music_demon;
        show_debug_message("Transition vers COMBAT");
    }
}
// DÉTECTION FIN DE COMBAT
else if (global.room_fighting) {
    global.room_fighting = false;
    
    // Lance le fade out
    if (global.current_music != -1) {
        global.fade_target = global.current_music;
        global.fade_type = "out";
        global.fade_progress = 0;
    }
    
    // Prépare la musique exploration
    global.next_music = music_by_floor[global.current_floor];
    show_debug_message("Transition vers EXPLORATION");
}

// GESTION DE LA MUSIQUE SUIVANTE (après fade out)
if (global.fade_progress == -1 && global.next_music != -1) {
    global.current_music = audio_play_sound(global.next_music, 
        (global.next_music == music_demon) ? 1 : 0, // Volume direct si combat, 0 si exploration
        true
    );
    
    // Si exploration, lance le fade in
    if (global.next_music != music_demon) {
        global.fade_target = global.current_music;
        global.fade_type = "in";
        global.fade_progress = 0;
    }
    
    show_debug_message("Nouvelle musique : " + string(global.current_music));
    global.next_music = -1;
}