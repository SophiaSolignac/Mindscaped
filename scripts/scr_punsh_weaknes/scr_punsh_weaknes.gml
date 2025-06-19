function scr_punsh_weaknes(spell){
	if ( !global.singleton_instance) return;
	 {
		global.singleton_instance.scr_hit_monsters_weaknes(spell[? "dmg"],spell[? "crit"]);
	 }
}