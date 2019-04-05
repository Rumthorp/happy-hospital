draw_sprite(spr_bar_long, spr_bar_long, cast_bar_frame_x_, cast_bar_frame_y_);

if (maximum_cast_time_ > 0) draw_healthbar(
	cast_bar_frame_x_ + cast_bar_start_x_,
	cast_bar_frame_y_ + cast_bar_start_y_,
	cast_bar_frame_x_ + cast_bar_end_x_,
	cast_bar_frame_y_ + cast_bar_end_y_,
	(cast_time_ / maximum_cast_time_) * 100,
	c_black,
	c_yellow,
	c_yellow,
	0,
	false,
	false);

draw_sprite(spr_bar_long, spr_bar_long, morale_bar_frame_x_, morale_bar_frame_y_);
	
if (morale_ > 0) draw_healthbar(
	morale_bar_frame_x_ + morale_bar_start_x_,
	morale_bar_frame_y_ + morale_bar_start_y_,
	morale_bar_frame_x_ + morale_bar_end_x_,
	morale_bar_frame_y_ + morale_bar_end_y_,
	(morale_ / maximum_morale_) * 100,
	c_black,
	c_blue,
	c_blue,
	0,
	false,
	false);