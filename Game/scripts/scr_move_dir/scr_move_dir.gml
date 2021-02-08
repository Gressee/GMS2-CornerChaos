////@description scr_move_dir(lenght ,direction)
///@arg0 lenght
///@arg1 direction

var lenght_ = argument0;
var dir_ = argument1;

switch dir_ {
	
	//right
	case 0:
		x += lenght_;
	break;
	
	//up
	case 1:
		y -= lenght_;
	break;
	
	//left
	case 2:
		x -= lenght_;
	break;
	
	//down
	case 3:
		y += lenght_;
	break;
}