////@desc scr_get_item_input()

var input_ = false;

if (player_time_ mod (room_speed*3)) == 0 and not (items_[0] == noone) {
	input_ = true;	
} else {
	input_ = false;	
}

//// Return ////
return input_;