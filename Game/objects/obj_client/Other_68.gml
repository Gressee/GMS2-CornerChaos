////____ Get stuff from async map ____////
var reciver_ = async_load[? "id"];
var buffer_ = async_load[? "buffer"];

////____ Interprete Data if its for our socket ____////
if client_socket_ == reciver_ {
	
	//// Get Commands ////
	buffer_seek(buffer_, buffer_seek_start, 0);
	var cmd_s16_ = buffer_read(buffer_, buffer_s16);
	var cmd_s16_pos_ = buffer_tell(buffer_);
	
	buffer_seek(buffer_, buffer_seek_start, 0);
	var cmd_string_ = buffer_read(buffer_, buffer_string);
	var cmd_string_pos_ = buffer_tell(buffer_);
	
	
	//// Disconnect from server ////
	#region
	if cmd_s16_ == cmd_disconnect_ {
		buffer_seek(buffer_, buffer_seek_start, cmd_s16_pos_);
		
		instance_destroy(self);
		room_goto(rm_menu_main);
		
		//restart game to not crash it 
		game_restart();
		show_debug_message("Restart in obj_client");
	}
	#endregion
	
	
	//// Client number ////
	#region
	if cmd_s16_ == cmd_client_number_ {
		buffer_seek(buffer_, buffer_seek_start, cmd_s16_pos_);
		
		client_number_ = buffer_read(buffer_, buffer_s16);	
	}
	#endregion
	
	
	//// Information about all Clients ////
	#region
	if cmd_string_ == cmd_client_information_ {
		buffer_seek(buffer_, buffer_seek_start, cmd_string_pos_);
		
		var total_clients_ = int64(buffer_read(buffer_, buffer_string));
		var i_ = 0;
		repeat total_clients_ {
			client_names_[i_] = buffer_read(buffer_, buffer_string);
			i_ ++;
		}
	}
	#endregion
	
	
	//// Map Index ////
	#region
	if cmd_s16_ == cmd_map_index_ {
		if not instance_exists(obj_server) {
			buffer_seek(buffer_, buffer_seek_start, cmd_s16_pos_);
			global.map_index_ = buffer_read(buffer_, buffer_s16);
		}
	}
	#endregion
	
	//// Player skills ////
	#region
	if cmd_s16_ = cmd_player_skills_ {
		buffer_seek(buffer_, buffer_seek_start, cmd_s16_pos_);
		
		//get the player skills for every player and write them to the global array
		var i_ = 0;
		repeat (4) {
			global.player_skills_[i_, 0] = buffer_read(buffer_, buffer_s16);
			global.player_skills_[i_, 1] = buffer_read(buffer_, buffer_s16);
			global.player_skills_[i_, 2] = buffer_read(buffer_, buffer_s16);
			global.player_skills_[i_, 3] = buffer_read(buffer_, buffer_s16);
			
			i_ ++;
		}
	}
	#endregion
	
	//// Game Start ////
	#region
	if cmd_s16_ == cmd_game_start {
		buffer_seek(buffer_, buffer_seek_start, cmd_s16_pos_);
		
		//set game to active
		global.game_active_ = true;
		
	}
	#endregion
	
	//// Room Change ////
	#region
	if cmd_s16_ == cmd_room_changed_ {
		//only change rooms if server does not exist (room changes are done in Menu objects otherwise)
		if not instance_exists(obj_server) {
			buffer_seek(buffer_, buffer_seek_start, cmd_s16_pos_);
		
			show_debug_message("Buffer pos: " + string(cmd_s16_pos_));
			show_debug_message("Command: " + string(cmd_s16_));
		
			var room_ = buffer_read(buffer_, buffer_s16);
			switch room_ {
				case room_game_:
					if not (room == rm_game) {
						room_goto(rm_game);
					}
				break;
			
				case room_menu_mp_setup_:
					if not (room == rm_menu_mp_setup) {
						room_goto(rm_menu_mp_setup);
					}
				break;
			
				case room_menu_map_:
					if not (room == rm_menu_map) {
						room_goto(rm_menu_map);
					}
				break;
				
				case room_menu_player_:
					show_debug_message("Check for change triggered");
					if not (room == rm_menu_player) {
						room_goto(rm_menu_player);
						show_debug_message("Changed");
					}
				break;
			}
		}
	}
	#endregion
	
	
	//// Player Data ////
	#region
	if cmd_s16_ = cmd_game_data_inputs_ {
		buffer_seek(buffer_, buffer_seek_start, cmd_s16_pos_);
		
		player_speed_dir_inputs_[0] = buffer_read(buffer_, buffer_s16);
		player_speed_dir_inputs_[1] = buffer_read(buffer_, buffer_s16);
		player_speed_dir_inputs_[2] = buffer_read(buffer_, buffer_s16);
		player_speed_dir_inputs_[3] = buffer_read(buffer_, buffer_s16);
		
		player_shoot_inputs_[0] = buffer_read(buffer_, buffer_s16);
		player_shoot_inputs_[1] = buffer_read(buffer_, buffer_s16);
		player_shoot_inputs_[2] = buffer_read(buffer_, buffer_s16);
		player_shoot_inputs_[3] = buffer_read(buffer_, buffer_s16);
		
		player_item_inputs_[0] = buffer_read(buffer_, buffer_s16);
		player_item_inputs_[1] = buffer_read(buffer_, buffer_s16);
		player_item_inputs_[2] = buffer_read(buffer_, buffer_s16);
		player_item_inputs_[3] = buffer_read(buffer_, buffer_s16);
		
	}
	#endregion
	
	
	//// Player Data Full ////
	#region
	if cmd_s16_ == cmd_game_data_full_ {
		buffer_seek(buffer_, buffer_seek_start, cmd_s16_pos_);
		
		//get numbers about instances
		total_player_inst_ = buffer_read(buffer_, buffer_s16);
		total_bullet_inst_ = buffer_read(buffer_, buffer_s16);
		total_item_box_inst_ = buffer_read(buffer_, buffer_s16);
		total_turn_around_inst_ = buffer_read(buffer_, buffer_s16);
		total_shield_inst_ = buffer_read(buffer_, buffer_s16);
		
		
		//get information about player
		var i_ = 0;
		repeat total_player_inst_ {
			players_x_[i_] = buffer_read(buffer_, buffer_s16);	
			players_y_[i_] = buffer_read(buffer_, buffer_s16);
			players_number_[i_] = buffer_read(buffer_, buffer_s16);
			players_image_dir_[i_] = buffer_read(buffer_, buffer_s16);	
			players_image_index_[i_] = buffer_read(buffer_, buffer_s16);	
			players_item0_[i_] = buffer_read(buffer_, buffer_s16);	
			players_item1_[i_] = buffer_read(buffer_, buffer_s16);	
			
			i_ ++;
		}
		
		//get information about bullets
		var i_ = 0;
		repeat total_bullet_inst_ {
			bullets_x_[i_] = buffer_read(buffer_, buffer_s16);
			bullets_y_[i_] = buffer_read(buffer_, buffer_s16);
			bullets_image_dir_[i_] = buffer_read(buffer_, buffer_s16);
			
			i_ ++;
		}
		
		//get information about item boxes 
		var i_ = 0;
		repeat total_item_box_inst_ {
			item_boxes_x_[i_] = buffer_read(buffer_, buffer_s16);
			item_boxes_y_[i_] = buffer_read(buffer_, buffer_s16);
			
			i_ ++;
		}
		
		//get information about turn arounds 
		var i_ = 0;
		repeat total_turn_around_inst_ {
			turn_arounds_x_[i_] = buffer_read(buffer_, buffer_s16);	
			turn_arounds_y_[i_] = buffer_read(buffer_, buffer_s16);
			turn_arounds_image_index_[i_] = buffer_read(buffer_, buffer_s16);
			
			i_ ++;
		}
		
		//get information about shields
		var i_ = 0;
		repeat total_shield_inst_ {
			shields_x_[i_] = buffer_read(buffer_, buffer_s16);	
			shields_y_[i_] = buffer_read(buffer_, buffer_s16);
			
			i_ ++;
		}
		
	}
	#endregion
	
	
	//// Game Over ////
	#region
	if cmd_s16_ == cmd_game_over_ {
		/*
		buffer_seek(buffer_, buffer_seek_start, cmd_s16_pos_);
		//change room
		room_goto(rm_menu_main);
		//destroy client
		instance_destroy();
		//destroy server 
		instance_exists(obj_server) {
			instance_destroy(obj_server);	
		}

		show_debug_message("Game over recived")
		*/
	}
	#endregion
}