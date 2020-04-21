/// @description Draw bar and numbers

draw_self();

draw_set_color(c_black);
// Check what text to display
if (!selected) {
	if (hpChangeFlag) {
		if (hp == hpChange) {
			hpChangeFlag = false;
		}
		else {
			hp +=	(hp > hpChange) ? -1 : 1;
		}
	}
	
	draw_text(x, y, hp);
}
else {
	if (firstSelected) {
		draw_text(x, y, hp);
	}
	else {
		draw_text(x, y, string(hpChange));
	}
}

draw_set_color(make_color_rgb(255 - (hp/100*255),  (hp/100 * 255), 0));
draw_rectangle(x+33, y+12, x+33+hp, y+20, false);