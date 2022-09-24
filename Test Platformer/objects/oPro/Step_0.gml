kl = keyboard_check(ord("A"));
kr = keyboard_check(ord("D"));
kj = keyboard_check_pressed(vk_space);

var walk = kr - kl;

hv = walk * mv;

vv += gv;

if (place_meeting(x,y+1, oWall)) && kj {
vv = -8
}

//h coll
if (place_meeting(x+hv,y, oWall)) {
	while (!place_meeting(x+sign(hv),y, oWall)) {
	x += sign(hv);
	}
	hv = 0;
}

x += hv;

//v coll
if (place_meeting(x,y+vv, oWall)) {
	while (!place_meeting(x,y+sign(vv), oWall)) {
	y += sign(vv);
	}
	vv = 0;
}

y += vv;