/// @description Control keyboard_string

if (selected) {
	
	if (keyboard_check_pressed(vk_anykey)) {
		firstSelected = false;
	}
	if (keyboard_check_pressed(vk_enter)) {
		selected = false;
		selected = false;
		//hp = hpChange;
		hpChangeFlag = true;
		image_index = 0;
	}
	
	hpChange = string_digits(keyboard_string);
	
	if (hpChange != "" && hpChange > 100) {
		hpChange = 100;
		keyboard_string = string(hpChange);
	}
}

//Check if selected or deselected
if (mouse_check_button_pressed(mb_left)) {
	if (position_meeting(mouse_x, mouse_y, self)) {
		selected = true;
		firstSelected = true;
		keyboard_string = "";
		image_index = 1;
	}
	else if (selected == true) {
		selected = false;
		//hp = hpChange;
		hpChangeFlag = true;
		image_index = 0;
	}
}