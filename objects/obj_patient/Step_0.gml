if (sick_ != true) {
	if (happiness_ >= 750) sprite_index = spr_face_happy;
	if (happiness_ >= 250 && happiness_ <= 749) sprite_index = spr_face_content;
	if (happiness_ <= 249) sprite_index = spr_face_angry;
}

if (sick_ == true) sprite_index = spr_face_sick;

if (happiness_ >= 0) happiness_ = happiness_ - happiness_decay_;

if (mouse_check_button_released(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
	var thisId = id;
	with(obj_player) {
		new_target_ = thisId;
	}
}




