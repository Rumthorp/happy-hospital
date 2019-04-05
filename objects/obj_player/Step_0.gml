if (!is_undefined(new_skill_) && !is_undefined(new_target_)) {
	skill_ = new_skill_;
	
	target_ = new_target_;
	new_target_ = undefined;
	
	maximum_cast_time_ = skill_.cast_time_;
	cast_time_ = 0;
}

if (cast_time_ == maximum_cast_time_ && !is_undefined(skill_) && !is_undefined(target_)) {
	if (target_.happiness_ + skill_.happiness_ > 1000) target_.happiness_ = 1000;
	if (target_.happiness_ + skill_.happiness_ < 1000) target_.happiness_ = target_.happiness_ + skill_.happiness_
	morale_ = morale_ - skill_.morale_;
	skill_ = undefined;
	cast_time_ = 0;
	maximum_cast_time_ = 0;
}

if (cast_time_ < maximum_cast_time_) {
	cast_time_ ++;
}

if (morale_ < 1000) morale_ = morale_ + morale_regen_;



