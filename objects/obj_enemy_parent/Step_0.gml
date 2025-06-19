
if(can_vertical_moove) vertical_osilation();

if(can_horizontal_moove) horizontal_osilation();

if (cooldown <= 0)
{
	perform_attack();
	cooldown = attack_cooldown;
} else cooldown --;


if (is_attacking) {
    attack_timer++;

    var t = attack_timer / attack_duration; // 0.0 → 1.0

    var max_scale = 1.5;
    
    if (t <= 0.5) {
        // Phase de grossissement
        image_xscale = initial_xscale * (1 + t * (max_scale - 1) * 2);
        image_yscale = initial_yscale * (1 + t * (max_scale - 1) * 2);
    } else {
        // Phase de rétrécissement
        var reverse_t = (t - 0.5) * 2;
        image_xscale = initial_xscale * (max_scale - reverse_t * (max_scale - 1));
        image_yscale = initial_yscale * (max_scale - reverse_t * (max_scale - 1));
    }

    if (attack_timer >= attack_duration) {
        image_xscale = initial_xscale;
        image_yscale = initial_yscale;
        is_attacking = false;
    }

if (attack_timer >= attack_duration) {
    image_xscale = initial_xscale;
    image_yscale = initial_yscale;
    is_attacking = false;
}
}