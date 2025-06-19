player_mana = round(max_mana * 0.75);
mana = max_mana;
shaking = false;

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


function check_mana_rent(amount)
{
	show_debug_message(player_mana)
	if (player_mana - amount > 0) return true;
	else 
	{
		rent_mana_start_shake();
		return false;
	}
}


shake_timer = 10;
shake_intensity = 7;

original_x = x;
original_y = y;

shaking = false;


function rent_mana_start_shake()
{
	alarm[0] = shake_timer;
	shaking = true;
}

function rent_mana_shake()
{
	x = original_x + random_range(-shake_intensity, shake_intensity);
    y = original_y + random_range(-shake_intensity, shake_intensity);
}