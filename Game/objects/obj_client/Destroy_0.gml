//destroy network (triggers disconnect in obj_server)
network_destroy(client_socket_);
client_socket_ = -1;

buffer_delete(buffer_inputs_);
buffer_inputs_ = -1;

buffer_delete(buffer_player_skills_);
buffer_player_skills_ = -1;

buffer_delete(buffer_player_name_);
buffer_player_name_ = -1

show_debug_message("Client destroyed");