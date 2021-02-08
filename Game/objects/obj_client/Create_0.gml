//// Client variables ////

//information about own client
client_number_ = 5;
own_client_name_ = obj_gui_menu_mp_setup.client_name_;

//information abput every client
client_names_ = ["Com1", "Com2", "Com3", "Com4"];

//create buffers
buffer_inputs_ = buffer_create(32, buffer_grow, 2);
buffer_player_name_ = buffer_create(64, buffer_grow, 1);
buffer_player_skills_ = buffer_create(64, buffer_grow, 2);

//spawn players
players_spawned_ = false;

//variables for reciving data about the game and for drawing the game state
total_player_inst_ = 0;
total_bullet_inst_ = 0;
total_item_box_inst_ = 0;
total_turn_around_inst_ = 0;
total_shield_inst_ = 0;

//information about all instances in room in 1d arrays
player_ids_ = [0, 0, 0, 0];
player_speed_dir_inputs_ = [0, 0, 0, 0];
player_shoot_inputs_ = [0, 0, 0, 0];
player_item_inputs_ = [0, 0, 0, 0];

players_x_[0] = 0;
players_y_[0] = 0;
players_number_[0] = 0;
players_image_dir_[0] = 0;
players_image_index_[0] = 0;
players_item0_[0] = 0;
players_item1_[0] = 0;

bullets_x_[0] = 0;
bullets_y_[0] = 0;
bullets_image_dir_[0] = 0;

item_boxes_x_[0] = 0;
item_boxes_y_[0] = 0;

turn_arounds_x_[0] = 0;
turn_arounds_y_[0] = 0;
turn_arounds_image_index_[0] = 0;

shields_x_[0] = 0;
shields_y_[0] = 0;



//// Init the client ////
#region

//create client socket with server type
client_socket_ = network_create_socket(global.server_type_);

//connect to our server
var port_ = 1789;
repeat (10) {
	
	var error_ = network_connect(client_socket_, global.server_ip_, port_);
	
	if (error_ == 0) {

		//client connected 
		show_debug_message("Client connectet with port " + string(port_));
		break;

	} else {
		
		//connection failed
		show_debug_message("Can't connect to server with port " + string(port_));
		
		//change port
		port_ += 1;
		
	}
}

//check if connecttion was finally succesfull andif not destroy client
if not (error_ == 0) {
	instance_destroy(self);	
}

#endregion








