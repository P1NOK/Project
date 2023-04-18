/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

gui_w = display_get_gui_width()
gui_h = display_get_gui_height()


draw_sprite(Sp_HelthBar_Background, -1, 100, gui_h - 150)
draw_sprite_part(Sp_HelthBar_HP, -1, 0, 0, Ob_Game_State.player_health * 396 / Ob_Game_State.player_max_helth, 36, 102, gui_h - 148)

//draw_healthbar(100, gui_h - 150, 450, gui_h - 110, Ob_player.player_health, c_black, c_red, c_lime, 0, true, true)

draw_text(gui_w - 100, gui_h - 150, string(Ob_gun.parameters.current_cartridges) + "/" + string(Ob_gun.parameters.current_cartridges_in_clip))