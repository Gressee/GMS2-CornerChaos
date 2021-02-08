////@desc scr_get_button_hover(x, y, width, height, h_reference, v_reference)
///@arg0 x
///@arg1 y
///@arg2 width
///@arg3 height
///@arg4 h_reference
///@arg5 v_reference

var x_ = argument0;
var y_ = argument1;
var width_ = argument2;
var height_ = argument3;
var h_ref_ = argument4;
var v_ref_ = argument5;

//get mouse pos
var mouse_pos_ = [device_mouse_x_to_gui(0), device_mouse_y_to_gui(0)];



//// Calc horizontal reference ////
//left
if h_ref_ == "left" {
	var left_ = x_;
	var right_ = x_ + width_;
}

//center
if h_ref_ == "center" {
	var left_ = x_ - width_/2;
	var right_ = x_ + width_/2;	
}

//right
if h_ref_ == "right" {
	var left_ = x_ - width_;
	var right_ = x_;
}





//// Calc vertical reference ////
//top
if v_ref_ == "top" {
	var top_ = y_;
	var bot_ = y_ + height_;
}

//middle
if v_ref_ == "middle" {
	var top_ = y_ - height_/2;
	var bot_ = y_ + height_/2;	
}

//bot
if v_ref_ == "bot" {
	var top_ = y_ - height_;
	var bot_ = y_;
}






//check if mouse is in it
if left_ <= mouse_pos_[0] and mouse_pos_[0] <= right_ and top_ <= mouse_pos_[1] and mouse_pos_[1] <= bot_ {
	return true;
} else {
	return false;
}