///@desc scr_player_skill_get_item_luck(item_luck_skillpoints)
//@arg0 item_luck_skillpoints

var sp_ = argument0;

//return_item_luck_ = [speed_boost chance, turne_around chance, shield_chance]
var return_item_luck_ = [0, 0, 0];

switch sp_ {
	
	case 0:
		return_item_luck_ = [0, 1, 0];
	break;
	
	case 1:
		return_item_luck_ = [0, 3, 1];
	break;
	
	case 2:
		return_item_luck_ = [0, 2, 1];
	break;
	
	case 3:
		return_item_luck_ = [0, 3, 2];
	break;
	
	case 4:
		return_item_luck_ = [0, 1, 1];
	break;
	
	case 5:
		return_item_luck_ = [1, 5, 6];
	break;
	
	case 6:
		return_item_luck_ = [1, 4, 6];
	break;
	
	case 7:
		return_item_luck_ = [1, 3, 5];
	break;
	
	case 8:
		return_item_luck_ = [2, 2, 4];
	break;
	
	case 9:
		return_item_luck_ = [2, 1, 3];
	break;
	
	case 10:
		return_item_luck_ = [3, 1, 3];
	break;
}

return return_item_luck_;