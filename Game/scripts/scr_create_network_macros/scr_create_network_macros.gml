///@desc scr_create_network_macros

//// Connect/Disconnect ////
#macro cmd_disconnect_			1

//// Room changing //// (if change room also add new room to obj_server Step and cliet Async!!!!)
#macro cmd_room_changed_		3
#macro room_game_				25
#macro room_menu_mp_setup_		26
#macro room_menu_map_			27
#macro room_menu_player_		28

//// Game Setup ////
#macro cmd_map_index_			7
#macro cmd_spawn_players_		29
#macro cmd_game_start			30

//// Player variables ////
#macro cmd_player_skills_		8
#macro cmd_client_information_	"a"
#macro cmd_client_number_		9
#macro cmd_client_name_			"b"

#macro cmd_client_inputs_		10 
#macro cmd_game_data_inputs_	11
#macro cmd_game_data_full_		12

//// Other ////
#macro cmd_game_over_			15
