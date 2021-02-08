///@desc scr_player_skill_get_shoot_couldown(shoot_couldown_skillpoints)
//@arg0 shoot_couldown_skillpoints

var sp_ = argument0;
var return_shoot_couldown_ = 0;

switch sp_ {
	
	case 0:
		return_shoot_couldown_ = 50;
	break;
	
	case 1:
		return_shoot_couldown_ = 47;
	break;
	
	case 2:
		return_shoot_couldown_ = 44;
	break;
	
	case 3:
		return_shoot_couldown_ = 41;
	break;
	
	case 4:
		return_shoot_couldown_ = 39;
	break;
	
	case 5:
		return_shoot_couldown_ = 37;
	break;
	
	case 6:
		return_shoot_couldown_ = 35;
	break;
	
	case 7:
		return_shoot_couldown_ = 33;
	break;
	
	case 8:
		return_shoot_couldown_ = 32;
	break;
	
	case 9:
		return_shoot_couldown_ = 30;
	break;
	
	case 10:
		return_shoot_couldown_ = 28;
	break;
}

return return_shoot_couldown_;