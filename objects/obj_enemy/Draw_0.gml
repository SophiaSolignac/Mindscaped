draw_self()
draw_healthbar(x,y+100,x+200,y+80,(health/max_health) * 100,c_black,c_red,c_green,0,false,true);
show_debug_message(string((health))+"%")