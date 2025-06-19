// Initialisation de la vie du joueur
player_health = round(max_health * 0.75);

set_bar_health_level();

// === Fonctions ===

// Modifie la vie et met à jour l’affichage de la barre
function modify_health_value(amount)
{
    player_health = clamp(player_health + amount, 0, max_health);
    set_bar_health_level();
}

// Met à jour le frame de la barre de vie en fonction du pourcentage de vie
function set_bar_health_level()
{
    var ratio = clamp(player_health / max_health, 0, 1);
    image_index = floor((1 - ratio) * (image_number - 1));
}