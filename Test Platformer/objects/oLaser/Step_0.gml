if (place_meeting(x - 10 ,y,oPro) || place_meeting(x + 10,y,oPro)) {
	if (mouse_check_button(mb_left)) instance_destroy();
}
