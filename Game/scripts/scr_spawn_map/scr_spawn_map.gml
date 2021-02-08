////@description scr_spawn_map(map_index)
///@arg0 map_index


var map_ = argument0;

//// Grid constants ////
var grid_pos_ = global.grid_pos_;
var grid_width_ = global.grid_width_;
var grid_height_ = global.grid_height_;


////main corner posisions ////
var corner_tl_ = [grid_pos_[0],					grid_pos_[1]];
var corner_tr_ = [grid_pos_[0] + grid_width_,	grid_pos_[1]];
var corner_bl_ = [grid_pos_[0],					grid_pos_[1] + grid_height_];
var corner_br_ = [grid_pos_[0] + grid_width_,	grid_pos_[1] + grid_height_];



//// Maps ////

//map 0
#region
if map_ == 0 {
	
	//main corners
	instance_create_layer(corner_tl_[0], corner_tl_[1], "Corners", obj_corner); //left top
	instance_create_layer(corner_tr_[0], corner_tr_[1], "Corners", obj_corner); //right top
	instance_create_layer(corner_bl_[0], corner_bl_[1], "Corners", obj_corner); //left bot
	instance_create_layer(corner_br_[0], corner_br_[1], "Corners", obj_corner); //right bot

	
	//corners
	instance_create_layer(grid_pos_[0] + grid_width_/2,		grid_pos_[1],					"Corners", obj_corner);
	instance_create_layer(grid_pos_[0],						grid_pos_[1] + grid_height_/2,	"Corners", obj_corner);
	instance_create_layer(grid_pos_[0] + grid_width_/2,		grid_pos_[1] + grid_height_/2,	"Corners", obj_corner);
	instance_create_layer(grid_pos_[0] + grid_width_/2,		grid_pos_[1] + grid_height_,	"Corners", obj_corner);
	instance_create_layer(grid_pos_[0] + grid_width_,		grid_pos_[1] + grid_height_/2,	"Corners", obj_corner);
	
	//item box positions
	obj_game.ib_pos_[0, 0] = corner_tl_[0];
	obj_game.ib_pos_[0, 1] = corner_tl_[1];
	
	obj_game.ib_pos_[1, 0] = corner_tr_[0];
	obj_game.ib_pos_[1, 1] = corner_tr_[1];
	
	obj_game.ib_pos_[2, 0] = corner_bl_[0];
	obj_game.ib_pos_[2, 1] = corner_bl_[1];
	
	obj_game.ib_pos_[3, 0] = corner_br_[0];
	obj_game.ib_pos_[3, 1] = corner_br_[1];
}
#endregion

//map 1
#region
if map_ == 1 {
	
	//main corners
	instance_create_layer(corner_tl_[0], corner_tl_[1], "Corners", obj_corner); //left top
	instance_create_layer(corner_tr_[0], corner_tr_[1], "Corners", obj_corner); //right top
	instance_create_layer(corner_bl_[0], corner_bl_[1], "Corners", obj_corner); //left bot
	instance_create_layer(corner_br_[0], corner_br_[1], "Corners", obj_corner); //right bot
	
	//item box positions
	obj_game.ib_pos_[0, 0] = corner_tl_[0];
	obj_game.ib_pos_[0, 1] = corner_tl_[1];
	
	obj_game.ib_pos_[1, 0] = corner_tr_[0];
	obj_game.ib_pos_[1, 1] = corner_tr_[1];
	
	obj_game.ib_pos_[2, 0] = corner_bl_[0];
	obj_game.ib_pos_[2, 1] = corner_bl_[1];
	
	obj_game.ib_pos_[3, 0] = corner_br_[0];
	obj_game.ib_pos_[3, 1] = corner_br_[1];
}
#endregion

//map 2
#region
if map_ == 2 {
	
	//main corners
	instance_create_layer(corner_tl_[0], corner_tl_[1], "Corners", obj_corner); //left top
	instance_create_layer(corner_tr_[0], corner_tr_[1], "Corners", obj_corner); //right top
	instance_create_layer(corner_bl_[0], corner_bl_[1], "Corners", obj_corner); //left bot
	instance_create_layer(corner_br_[0], corner_br_[1], "Corners", obj_corner); //right bot
	
	//corners
	instance_create_layer(grid_pos_[0],							grid_pos_[1] + grid_height_/2 - 400,"Corners", obj_corner);
	instance_create_layer(grid_pos_[0] + grid_width_,			grid_pos_[1] + grid_height_/2 - 400,"Corners", obj_corner);
	
	instance_create_layer(grid_pos_[0],							grid_pos_[1] + grid_height_/2 + 400,"Corners", obj_corner);
	instance_create_layer(grid_pos_[0] + grid_width_,			grid_pos_[1] + grid_height_/2 + 400,"Corners", obj_corner);
	
	instance_create_layer(grid_pos_[0] + grid_width_/2 - 400,	grid_pos_[1] + grid_height_/2 - 400,"Corners", obj_corner);
	instance_create_layer(grid_pos_[0] + grid_width_/2 - 400,	grid_pos_[1] ,						"Corners", obj_corner);
	
	instance_create_layer(grid_pos_[0] + grid_width_/2 + 400,	grid_pos_[1] + grid_height_/2 + 400,"Corners", obj_corner);
	instance_create_layer(grid_pos_[0] + grid_width_/2 + 400,	grid_pos_[1] + grid_height_,		"Corners", obj_corner);
	
	//item box positions
	obj_game.ib_pos_[0, 0] = corner_tl_[0];
	obj_game.ib_pos_[0, 1] = corner_tl_[1];
	
	obj_game.ib_pos_[1, 0] = corner_tr_[0];
	obj_game.ib_pos_[1, 1] = corner_tr_[1];
	
	obj_game.ib_pos_[2, 0] = corner_bl_[0];
	obj_game.ib_pos_[2, 1] = corner_bl_[1];
	
	obj_game.ib_pos_[3, 0] = corner_br_[0];
	obj_game.ib_pos_[3, 1] = corner_br_[1];
}
#endregion




