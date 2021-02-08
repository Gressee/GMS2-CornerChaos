///@desc scr_get_button_scales(button_posistion, button_dimension, button_scale, h_reference, v_reference)
///@arg0 button_position
///@arg0 button_dimension
///@arg0 button_scale
///@arg1 h_reference
///@arg2 v_reference

var pos_ = argument0;
var dim_ = argument1;
var scale_ = argument2;
var h_ref_ = argument3;
var v_ref_ = argument4;

if scr_get_button_hover(pos_[0], pos_[1], dim_[0], dim_[1], h_ref_, v_ref_) {
	scale_ = [lerp(scale_[0], obj_camera.gui_scale_ * 1.2, 0.3), lerp(scale_[1], obj_camera.gui_scale_ * 1.2, 0.3)];
} else {
	scale_ = [lerp(scale_[0], obj_camera.gui_scale_, 0.3), lerp(scale_[1], obj_camera.gui_scale_, 0.3)];
}

return scale_;