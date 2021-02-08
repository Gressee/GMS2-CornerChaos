////@desc scr_create_2d_array(height, width, standard_value)
///@arg0 height
///@arg1 width
///@arg2 standard_value

var height_ = argument0;
var width_ = argument1;
var value_ = argument2;
var array_ = [0, 0];

var i_ = 0;
var j_ = 0;

repeat(height_) {
	j_ = 0;
	repeat (width_) {
		array_[i_, j_] = value_;
		j_++;
	}
	i_ ++;
}

return array_;