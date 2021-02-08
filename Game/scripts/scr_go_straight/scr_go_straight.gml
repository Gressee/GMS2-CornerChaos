// go straight
snapped_ = false;
speed_current_ = speed_max_;
speed_target_ = speed_max_;
image_angle = speed_dir_*90;

if not speed_dir_ == "" {
	speed_dir_ = speed_dir_input_;
}

//make jump forward to not get anapped again to corner
scr_move_dir(speed_max_, speed_dir_);