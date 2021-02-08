///@desc scr_spawn_players(human_players)
///@arg0 human_players

//get arguments
var humans_ = argument0;

//// Get Spawn Positions ////
var spawn0_ = [global.grid_pos_[0], global.grid_pos_[1]];
var spawn1_ = [global.grid_pos_[0] + global.grid_width_, global.grid_pos_[1]];
var spawn2_ = [global.grid_pos_[0], global.grid_pos_[1] + global.grid_height_];
var spawn3_ = [global.grid_pos_[0] + global.grid_width_, global.grid_pos_[1] + global.grid_height_];

//// Spawn Players ////
var p0_ = instance_create_layer(spawn0_[0], spawn0_[1], "Players", obj_player);	
p0_.player_number_		= 0;
p0_.speed_dir_			= 0;
p0_.x					+= 15;
p0_.speed_normal_		= scr_player_skill_get_speed(global.player_skills_[0, 0]);
p0_.speed_max_			= scr_player_skill_get_speed(global.player_skills_[0, 0]);
p0_.shoot_cooldown_max_	= scr_player_skill_get_shoot_couldown(global.player_skills_[0, 1]);	
p0_.shoot_recoil_		= scr_player_skill_get_recoil(global.player_skills_[0, 2]);
p0_.item_luck_			= scr_player_skill_get_item_luck(global.player_skills_[0, 3]);
p0_.speed_target_		= p0_.speed_max_;

var p1_ = instance_create_layer(spawn1_[0], spawn1_[1], "Players", obj_player);
p1_.player_number_		= 1;
p1_.speed_dir_			= 3;
p1_.y					+= 15;
p1_.speed_normal_		= scr_player_skill_get_speed(global.player_skills_[1, 0]);
p1_.speed_max_			= scr_player_skill_get_speed(global.player_skills_[1, 0]);
p1_.shoot_cooldown_max_	= scr_player_skill_get_shoot_couldown(global.player_skills_[1, 1]);	
p1_.shoot_recoil_		= scr_player_skill_get_recoil(global.player_skills_[1, 2]);
p1_.item_luck_			= scr_player_skill_get_item_luck(global.player_skills_[1, 3]);
p1_.speed_target_		= p1_.speed_max_;

var p2_ = instance_create_layer(spawn2_[0], spawn2_[1], "Players", obj_player);
p2_.player_number_		= 2;
p2_.speed_dir_			= 1;
p2_.y					+= -15;
p2_.speed_normal_		= scr_player_skill_get_speed(global.player_skills_[2, 0]);
p2_.speed_max_			= scr_player_skill_get_speed(global.player_skills_[2, 0]);
p2_.shoot_cooldown_max_	= scr_player_skill_get_shoot_couldown(global.player_skills_[2, 1]);	
p2_.shoot_recoil_		= scr_player_skill_get_recoil(global.player_skills_[2, 2]);
p2_.item_luck_			= scr_player_skill_get_item_luck(global.player_skills_[2, 3]);
p2_.speed_target_		= p2_.speed_max_;

var p3_ = instance_create_layer(spawn3_[0], spawn3_[1], "Players", obj_player);
p3_.player_number_		= 3;
p3_.speed_dir_			= 2;
p3_.x					+= -15;
p3_.speed_normal_		= scr_player_skill_get_speed(global.player_skills_[3, 0]);
p3_.speed_max_			= scr_player_skill_get_speed(global.player_skills_[3, 0]);
p3_.shoot_cooldown_max_	= scr_player_skill_get_shoot_couldown(global.player_skills_[3, 1]);	
p3_.shoot_recoil_		= scr_player_skill_get_recoil(global.player_skills_[3, 2]);
p3_.item_luck_			= scr_player_skill_get_item_luck(global.player_skills_[3, 3]);
p3_.speed_target_		= p3_.speed_max_;


//// Set player to human or com
if humans_ = 0 {
	p0_.player_type_		= type_com_;
	p1_.player_type_		= type_com_;
	p2_.player_type_		= type_com_;
	p3_.player_type_		= type_com_;
}
if humans_ = 1 {
	p0_.player_type_		= type_human_;
	p1_.player_type_		= type_com_;
	p2_.player_type_		= type_com_;
	p3_.player_type_		= type_com_;
}
if humans_ = 2 {
	p0_.player_type_		= type_human_;
	p1_.player_type_		= type_human_;
	p2_.player_type_		= type_com_;
	p3_.player_type_		= type_com_;
}
if humans_ = 3 {
	p0_.player_type_		= type_human_;
	p1_.player_type_		= type_human_;
	p2_.player_type_		= type_human_;
	p3_.player_type_		= type_com_;
}
if humans_ = 4 {
	p0_.player_type_		= type_human_;
	p1_.player_type_		= type_human_;
	p2_.player_type_		= type_human_;
	p3_.player_type_		= type_human_;
}


//// Get Array of instance id and return it (for multiplayer)
return [p0_, p1_, p2_, p3_];


