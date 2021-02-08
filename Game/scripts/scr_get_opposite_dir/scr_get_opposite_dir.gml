////@desc scr_get_opposite_dir (direction)
///@arg0 directon

var dir_ = argument0;
var opp_dir_ = 0;

//calc opp dir
switch dir_ {
			
	case 0:
		opp_dir_ = 2;
	break;
	
	case 1:
		opp_dir_ = 3;
	break;
			
	case 2:
		opp_dir_ = 0;
	break;
		
	case 3:
		opp_dir_ = 1;
	break;
}

//return
return opp_dir_



