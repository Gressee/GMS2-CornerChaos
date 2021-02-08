////@desc scr_get_player_skill_distribution()

var skill_array_ = [0, 0, 0];
var speed_ = 0;
var shootcouldown_ = 0;
var recoil_ = 0;
var item_luck_ = 0;

var r_ = 0;

repeat (max_skillpoints_) {
	r_ = irandom_range(0, 3);
	
	if (r_ = 0) {
		if (speed_ < max_skillpoints_per_skill_) {
			speed_ ++;
		}
	}
	
	if (r_ = 1) {
		if (shootcouldown_ < max_skillpoints_per_skill_) {
			shootcouldown_ ++;
		}
	}
	
	if (r_ = 2) {
		if (recoil_ < max_skillpoints_per_skill_) {
			recoil_ ++;
		}
	}
	
	if (r_ = 3) {
		if (item_luck_ < max_skillpoints_per_skill_) {
			item_luck_ ++;
		}
	}
}

skill_array_ =  [speed_, shootcouldown_, recoil_, item_luck_];

return skill_array_;

