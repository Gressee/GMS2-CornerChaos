//// Movement ////
scr_move_dir(speed_, direction_);
image_angle = direction_;


//// Destroy when hitting player ////
//if place_meeting(x, y, obj_player) {
//	instance_destroy();
//}


//// Destroy self if at end of room ////
if x < 0 or x > room_width or y < 0 or y > room_height {
	instance_destroy(self);	
}
