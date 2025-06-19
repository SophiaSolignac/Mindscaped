// ===== AMBIANCE =====
global.current_ambience = audio_play_sound(AMB_Dungeon, 80, true);
audio_sound_gain(global.current_ambience, 0, 0);      // Volume à 0 au départ
audio_sound_gain(global.current_ambience, 1, 2000);   // Fade in progressif (2 sec)

// ===== SFX =====
global.PlaySFX = function(_sfx) {
    audio_play_sound(_sfx, 50, false);
};

// ===== MUSIQUES =====
// Tableau des musiques d'exploration
music_by_floor = array_create(4, -1); // Indices 0-3 (0 inutilisé)
music_by_floor[1] = Mindscape_GameJam_Exploration_etage1; // Étage 1
music_by_floor[2] = Mindscape_GameJam_Exploration_etage2; // Étage 2
music_by_floor[3] = Mindscape_GameJam_Exploration_etage3; // Étage 3

// Musiques spéciales
music_demon = Mindscape_GameJam_Battle_Demon;
music_boss  = Mindscape_GameJam_Final_Boss;

// ===== VARIABLES =====
global.current_floor = 1;        // Étage de départ
current_floor = -1;              // Pour forcer le lancement initial
global.music_mode = "exploration"; 
global.room_fighting = false;
global.current_music = -1;       // Reset volontaire

// Variables de fade
global.fade_progress = -1; // -1 = inactif, 0-1 = progression
global.fade_type = "";    // "in" ou "out"
global.fade_target = -1;   // ID de la musique cible
global.next_music = -1;    // Prochaine musique à jouer




// ===== INITIALISATION MUSICALE =====
// On force le lancement via le Step Event (évite les conflits de timing)
show_debug_message("Système audio prêt - en attente du lancement musical");