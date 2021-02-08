////@desc scr_send_to_all_clients(buffer, buffer_size)
///@arg0 buffer
///@arg1 size

var buffer_ = argument0;
var size_ = argument1;


var i_ = 0;
var socket_ = client_socket_list_[| i_];
repeat total_clients_ {
	socket_ = client_socket_list_[| i_];
	if not (socket_ == -2) {
		network_send_packet(socket_, buffer_, size_);
	}
	i_ ++;
}