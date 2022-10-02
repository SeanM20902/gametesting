shootDelay -= 1;
if (shootDelay < 0) {
	shootDelay = 100;
	with (instance_create_layer(x,y,"Lasers",oLaser)) {
		speed = 1;
		direction = 180;
		image_angle = 180;
	}
}

