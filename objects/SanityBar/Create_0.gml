player_mana = round(max_mana * 0.75);

set_bar_healt_level();

// func
function modify_health_value(amount)
{
    player_mana = clamp(player_mana + amount, 0, max_mana);
    set_bar_healt_level();
}

function set_bar_healt_level()
{
    var ratio = clamp(player_mana / max_mana, 0, 1);
    image_index = floor((1 - ratio) * (image_number - 1));
}