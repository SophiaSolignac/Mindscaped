draw_self();

// --- Dessiner la barre de vie au-dessus
// Paramètres du sprite de la barre
var total_frames = sprite_get_number(life_bar_sprite);

// --- Calcul du pourcentage de vie
var ratio = pv / max_pv; // Exemple : hp = 30 / 100 → 0.3
ratio = clamp(ratio, 0, 1); // pour éviter les bugs

// --- Choix de la frame selon la vie
var frame = floor((1 - ratio) * (total_frames - 1));

// --- Position de la barre de vie
var bar_x = x;
var bar_y = y + bar_offset_y;

var scal = bar_scale_size;

draw_sprite_ext(
    life_bar_sprite,    // sprite
    frame,         // image_index
    bar_x,         // x
    bar_y,         // y
    scal,       // xscale
    scal,       // yscale
    0,             // rotation
    c_red,       // couleur
    1              // alpha
);