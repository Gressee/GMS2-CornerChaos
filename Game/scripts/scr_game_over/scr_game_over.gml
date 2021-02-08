///@desc scr_game_over()

if room == rm_game {
	if instance_number(obj_player) <= 1 {
		return true;
	} else {
		return false;	
	}
} else {
	return false;
}