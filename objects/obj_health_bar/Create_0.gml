player_health = round(max_helth * 0.75);

set_bar_healt_level();

// func
function modify_health_value(amount)
{
    player_health = clamp(player_health + amount, 0, max_helth);
    set_bar_healt_level();
}

function set_bar_healt_level()
{
    var ratio = clamp(player_health / max_helth, 0, 1);
    image_index = floor((1 - ratio) * (image_number - 1));
}