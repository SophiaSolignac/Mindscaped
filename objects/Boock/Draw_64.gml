draw_set_color(c_black);

//draw_rectangle(x, y, x + page_w, y + page_h, false);

if (!page_is_turning && actual_page > 0 && actual_page <= ds_list_size(sples_list)) {
	
    var spell = sples_list[| actual_page - 1];
    
    draw_text_ext(x, y,                  "Spel name: " + string(spell[? "name"]), -1, floor(page_h));
    draw_text_ext(x, y + enter_h * 2,        "Spel cost: " + string(spell[? "cost"]), -1, floor(page_h));
    draw_text_ext(x, y + enter_h * 3,    "Spel damages: " + string(spell[? "dmg"]), -1, floor(page_h));
	
	draw_set_font(Book_normal_font);
    draw_text_ext(x + page_w, y,    "Efect: " + string(spell[? "desc"]), -1, floor(page_h));
}