function spel_init(){


// sors 
sples_list = ds_list_create();

// spel zero
spel_zero = ds_map_create();

spel_zero[? "name"] = "Recovery";
spel_zero[? "cost"] = -5;
spel_zero[? "dmg"] = 0;


//spel_zero[? "desc"] = "useful for opening doors and interacting with objects";
spel_zero[? "desc"] = "Click to recover your mana ";

// Sors 1
spel_one = ds_map_create();

spel_one[? "name"] = "Magic punsh";
spel_one[? "cost"] = 5;
spel_one[? "dmg"] = 5;

spel_one[? "rad"] = .1;
spel_one[? "crit"] = 2;

spel_one[? "desc"] = "powerless but rentable";


// Sors 2
spel_tow = ds_map_create();

spel_tow[? "name"] = "Fierball";
spel_tow[? "cost"] = 20;
spel_tow[? "dmg"] = 50;

spel_tow[? "rad"] = .1;

spel_tow[? "desc"] = "powerfull but expensive";

// Sors 3
spel_tree = ds_map_create();

spel_tree[? "name"] = "Heal";
spel_tree[? "cost"] = 10;
spel_tree[? "dmg"] = 0;

spel_tree[? "rec_life"] = 20;

spel_tree[? "desc"] = "Hit an enemy restor your health";

// Sors 4
spel_four = ds_map_create();

spel_four[? "name"] = "magic cloud";
spel_four[? "cost"] = 8;
spel_four[? "dmg"] = 8;

spel_four[? "rad"] = 1;

spel_four[? "desc"] = "power less but hit in zoone";


}