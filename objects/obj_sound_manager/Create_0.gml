// ===== AMBIANCE =====
global.current_ambience = audio_play_sound(AMB_Dungeon, 80, true);
audio_sound_gain(global.current_ambience, 0, 0);
audio_sound_gain(global.current_ambience, 1, 2000);

// ===== SYSTEME SFX =====
// SFX générique
global.PlaySFX = function(_sfx, _volume = 50) {
    if (audio_exists(_sfx)) {
        audio_play_sound(_sfx, _volume, false);
    } else {
        show_debug_message("SFX manquant: " + string(_sfx));
    }
};

// SFX des sorts
global.spell_sfx = {
    fireball: SFX_Spell_Fireball,
    heal: SFX_Spell_Heal,
    interact: SFX_Spell_Interact,
    punch: SFX_Spell_Magic_Punch,
    cloud: SFX_Spell_Magic_Cloud
};

// Joue un SFX de sort
global.PlaySpellSFX = function(spell_type, _volume = 70) {
    var sfx = variable_struct_get(global.spell_sfx, spell_type);
    if (sfx != undefined) {
        global.PlaySFX(sfx, _volume);
    } else {
        show_debug_message("Type de sort inconnu: " + string(spell_type));
    }
};

// Page turn Right

global.sfx_page_turnright = SFX_Turn_Page_Right;

// Fonction globale pour tourner les pages
global.PlayPageTurnright = function() {
    audio_play_sound(global.sfx_page_turnright, 60, false);
}

// Page turn Left
global.sfx_page_turnleft = SFX_Turn_Page_Left;

// Fonction globale pour tourner les pages
global.PlayPageTurnleft = function() {
    audio_play_sound(global.sfx_page_turnleft, 60, false);
}




// ===== SYSTEME MUSICAL =====
// Musiques d'exploration
music_by_floor = array_create(4, -1);
music_by_floor[1] = Mindscape_GameJam_Exploration_etage1;
music_by_floor[2] = Mindscape_GameJam_Exploration_etage2;
music_by_floor[3] = Mindscape_GameJam_Exploration_etage3;

// Musiques spéciales
music_demon = Mindscape_GameJam_Battle_Demon;
music_boss = Mindscape_GameJam_Final_Boss;

// ===== ETAT AUDIO =====
global.current_floor = 1;
current_floor = -1;
global.music_mode = "exploration";
global.room_fighting = false;
global.current_music = -1;

// ===== FADES =====
global.fade_progress = -1;
global.fade_type = "";
global.fade_target = -1;
global.next_music = -1;

// ===== DEBUG =====
show_debug_message("Sound Manager initialisé");
show_debug_message("SFX disponibles: " + string(struct_get_names(global.spell_sfx)));