////@desc scr_get_com_shoot_input()


var input_ = false;
var check_pos_ = [0,0];
var collision_ = false;

//// Check if player is in front ////

//set start pos for check posision (in front of self to not get a collision with self)
switch speed_dir_ {
	
	case 0:
		check_pos_ = [x + sprite_get_width(spr_player), y];
	break;
	
	case 1:
		check_pos_ = [x, y - sprite_get_width(spr_player)];
	break;
	
	case 2:
		check_pos_ = [x - sprite_get_width(spr_player), y];
	break;
	
	case 3:
		check_pos_ = [x, y + sprite_get_width(spr_player)];
	break;
}

//move check position forward and check for collision
switch speed_dir_ {
	
	case 0:
		while check_pos_[0] < room_width {
			check_pos_[0] += sprite_get_width(spr_player);
			if collision_point(check_pos_[0], check_pos_[1], obj_player, false, true) {
				collision_ = true;
				break;
			}
		}
	break;
	
	case 1:
		while check_pos_[1] > 0 {
			check_pos_[1] -= sprite_get_width(spr_player);
			if collision_point(check_pos_[0], check_pos_[1], obj_player, false, true) {
				collision_ = true;
				break;
			}
		}
	break;
	
	case 2:
		while check_pos_[0] > 0 {
			check_pos_[0] -= sprite_get_width(spr_player);
			if collision_point(check_pos_[0], check_pos_[1], obj_player, false, true) {
				collision_ = true;
				break;
			}
		}
	break;
	
	case 3:
		while check_pos_[1] < room_height {
			check_pos_[1] += sprite_get_width(spr_player);
			if collision_point(check_pos_[0], check_pos_[1], obj_player, false, true) {
				collision_ = true;
				break;
			}
		}
	break;
}


if collision_ == true {
	input_ = true;	
}

//// Return ////
return input_;