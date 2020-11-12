/// @description Insert description here
// You can write your code in this editor

// text

let view_width = obj_cam.view_width;

draw_set_font(fnt_pixel);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if (alarm[0] != -1) {
	let off = 1 - alarm[0] / spd;
	x = view_width - (off * string_width(text));
	alpha = off;
}

if (alarm[2] != -1) {
	let off = alarm[2] / spd;
	x = view_width - (off * string_width(text));
	alpha = off;
}

draw_text_col(x, y, text, c_white, alpha);