kl = keyboard_check(ord("A"));
kr = keyboard_check(ord("D"));
kj = keyboard_check_pressed(vk_space);
var walk = kr - kl;
hv = walk * mv;

vv += gv;

if(keyboard_check_pressed(vk_space) && jump_current > 0)
{
	vv = -15
    jump_current--;
}

//h collision
if (place_meeting(x+hv,y, oWall)) {
	while (!place_meeting(x+sign(hv),y, oWall)) {
	x += sign(hv);
	}
	hv = 0;
}

x += hv;

//v collision
if (place_meeting(x,y+vv, oWall)) {
	while (!place_meeting(x,y+sign(vv), oWall)) {
	y += sign(vv);
	}
	if(vv > 0){
        jump_current = jump_number;
    }
	vv = 0;
}

y += vv;
