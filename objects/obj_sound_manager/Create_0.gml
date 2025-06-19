// Ambiance
global.current_ambience = audio_play_sound(AMB_Dungeon, 80, true);
audio_sound_gain(global.current_ambience, 0, 0);      // volume immédiat à 0
audio_sound_gain(global.current_ambience, 1, 2000);   // fade in ambiance sur 2 sec

// SFX utility
global.PlaySFX = function(_sfx) {
    audio_play_sound(_sfx, 50, false);
};

// Musiques par étage
music_by_floor = [];
music_by_floor[1] = Mindscape_GameJam_Exploration_etage1;
music_by_floor[2] = Mindscape_GameJam_Exploration_etage2;
music_by_floor[3] = Mindscape_GameJam_Exploration_etage3;

// Initialisation
global.current_floor = 1;        // étage de départ
current_floor = -1;              // pour détecter le changement dans le Step
current_music = -1;              // identifiant de la musique en cours

