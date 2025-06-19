
if(can_vertical_moove) vertical_osilation();

if(can_horizontal_moove) horizontal_osilation();

if (cooldown <= 0)
{
	perform_attack();
	cooldown = attack_cooldown;
} else cooldown --;


if (is_attacking) {
    attack_timer++;

    var t = attack_timer / attack_duration; // 0.0 à 1.0

    // Animation : grossit jusqu'à la moitié, puis rétrécit
    if (t <= 0.5) {
        image_xscale = 1 + t * 0.5; // grandit jusqu’à 1.25
        image_yscale = 1 + t * 0.5;
    } else {
        image_xscale = 1.25 - (t - 0.5) * 0.5 * 2; // revient à 1
        image_yscale = 1.25 - (t - 0.5) * 0.5 * 2;
    }

    if (attack_timer >= attack_duration) {
        image_xscale = 1;
        image_yscale = 1;
        is_attacking = false;
    }
}