/// @description Draw bar and numbers

draw_self();

draw_set_color(c_black);

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
for(var i = 90; i < (hp/100 * 360) + 90; i++) {
	centerX = lengthdir_x(radius, i);
	centerY = lengthdir_y(radius, i);
	draw_rectangle(x+centerX-1, y+centerY-1, x+centerX+1, y+centerY+1, false);
}