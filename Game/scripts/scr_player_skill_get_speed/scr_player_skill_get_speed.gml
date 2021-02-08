///@desc scr_player_skill_get_speed(speed_skillpoints)
//@arg0 speed_skillpoints

var sp_ = argument0;
var return_speed_ = 0;

switch sp_ {
	
	case 0:
		return_speed_ = 15;
	break;
	
	case 1:
		return_speed_ = 16;
	break;
	
	case 2:
		return_speed_ = 17;
	break;
	
	case 3:
		return_speed_ = 18;
	break;
	
	case 4:
		return_speed_ = 19;
	break;
	
	case 5:
		return_speed_ = 20;
	break;
	
	case 6:
		return_speed_ = 21;
	break;
	
	case 7:
		return_speed_ = 22;
	break;
	
	case 8:
		return_speed_ = 23;
	break;
	
	case 9:
		return_speed_ = 24;
	break;
	
	case 10:
		return_speed_ = 25;
	break;
}

return return_speed_;