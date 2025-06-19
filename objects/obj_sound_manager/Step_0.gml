var actual_floor = global.current_floor;

if (actual_floor != current_floor) {
    current_floor = actual_floor;

    // Stopper musique précédente s’il y en avait une
    if (current_music != -1) {
        audio_stop_sound(current_music);
    }

    // Choisir la bonne musique
    var next_music = music_by_floor[actual_floor];

    // Si on est à l’étage 1, fade in
    if (actual_floor == 1) {
        current_music = audio_play_sound(next_music, 1, true);
        audio_sound_gain(current_music, 0, 0);       // commencer à 0
        audio_sound_gain(current_music, 1, 3000);    // fade in sur 3 secondes
    } else {
        // étage 2 ou 3 → pas de fade
        current_music = audio_play_sound(next_music, 1, true);
    }
}
