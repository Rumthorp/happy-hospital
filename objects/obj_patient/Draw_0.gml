var x_offset = (sprite_get_width(sprite_index) - sprite_get_width(spr_bar)) / 2;
var y_offset = 120;
var top_left_x_offset = 2;
var top_left_y_offset = 2;
var bottom_right_x_offset = 73;
var bottom_right_y_offset = 15;

draw_self();

draw_sprite(
	spr_bar, 
	-1,
	x + x_offset,
	y + y_offset);
	
draw_set_color(c_red);

if (happiness_ > 0) draw_healthbar(
	x + x_offset + top_left_x_offset,
	y + y_offset + top_left_y_offset,
	x + x_offset + bottom_right_x_offset,
	y + y_offset + bottom_right_y_offset,
	(happiness_ / maximum_happiness_) * 100,
	c_black,
	c_red,
	c_lime,
	0,
	false,
	false);