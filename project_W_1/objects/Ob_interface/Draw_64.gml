/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

gui_w = display_get_gui_width
gui_h = display_get_gui_height()


draw_healthbar(100, gui_h - 150, 400, gui_h - 100, Ob_player.player_health, c_black, c_red, c_lime, 0, true, true)