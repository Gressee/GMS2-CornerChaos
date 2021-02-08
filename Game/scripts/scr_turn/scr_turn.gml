//turn
snapped_ = false;
speed_dir_ = speed_dir_input_;
speed_target_ = speed_max_;
image_angle = speed_dir_*90;

//make jump forward to not get anapped again to corner
scr_move_dir(speed_max_, speed_dir_);