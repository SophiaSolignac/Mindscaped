global.current_ambience = audio_play_sound(AMB_Dungeon, 80, true);
audio_sound_gain(global.current_ambience, 0, 0);      // force le volume à 0 immédiatement
audio_sound_gain(global.current_ambience, 1, 2000);   // puis on fait un fade jusqu'à 1 en 2 sec

//SFX
global.PlaySFX = function(_sfx) {
    audio_play_sound(_sfx, 50, false);// priorité 50, pas en boucle
};

