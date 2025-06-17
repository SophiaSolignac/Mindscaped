function play_music_for_floor()
{
	
function play_music_for_floor(_floor_level) {
    switch(_floor_level) {
        case 1:
            audio_play_sound(Mindscape_GameJam_Exploration_etage1, 1, true);
            break;
        case 2:
            audio_play_sound(Mindscape_GameJam_Exploration_etage2, 1, true);
            break;
        case 3:
            audio_play_sound(Mindscape_GameJam_Exploration_etage3, 1, true);
            break;
        default:
            show_debug_message("Étage inconnu : " + string(_floor_level));
    }
}

}