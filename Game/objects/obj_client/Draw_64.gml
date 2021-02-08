////____ DRAW CLIENTS IN MENU MP SETUP ____////
if room == rm_menu_mp_setup {
	//// Draw Player Sprites ////
	draw_sprite(spr_player, 0, obj_camera.display_res_[0]*(1/5), obj_camera.display_res_[1]*0.5);
	draw_sprite(spr_player, 1, obj_camera.display_res_[0]*(2/5), obj_camera.display_res_[1]*0.5);
	draw_sprite(spr_player, 2, obj_camera.display_res_[0]*(3/5), obj_camera.display_res_[1]*0.5);
	draw_sprite(spr_player, 3, obj_camera.display_res_[0]*(4/5), obj_camera.display_res_[1]*0.5);
	
	//Draw names 
	draw_set_font(font_client_names);
	draw_set_halign(fa_center);
	draw_text(obj_camera.display_res_[0]*(1/5), obj_camera.display_res_[1]/2 - 200, client_names_[0]);
	draw_text(obj_camera.display_res_[0]*(2/5), obj_camera.display_res_[1]/2 - 200, client_names_[1]);
	draw_text(obj_camera.display_res_[0]*(3/5), obj_camera.display_res_[1]/2 - 200, client_names_[2]);
	draw_text(obj_camera.display_res_[0]*(4/5), obj_camera.display_res_[1]/2 - 200, client_names_[3]);
	scr_draw_set_reset();
}


////____ Draw Items in Game Room ____////
if room == rm_game {
	
}