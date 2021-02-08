///@desc scr_player_skill_get_recoil(recoil_skillpoints)
//@arg0 recoil_skillpoints

var sp_ = argument0;
var return_recoil_ = 0;

switch sp_ {
	
	case 0:
		return_recoil_ = 17;
	break;
	
	case 1:
		return_recoil_ = 18;
	break;
	
	case 2:
		return_recoil_ = 16;
	break;
	
	case 3:
		return_recoil_ = 14;
	break;
	
	case 4:
		return_recoil_ = 12;
	break;
	
	case 5:
		return_recoil_ = 10;
	break;
	
	case 6:
		return_recoil_ = 8;
	break;
	
	case 7:
		return_recoil_ = 6;
	break;
	
	case 8:
		return_recoil_ = 4;
	break;
	
	case 9:
		return_recoil_ = 2;
	break;
	
	case 10:
		return_recoil_ = 0;
	break;
}

return return_recoil_;