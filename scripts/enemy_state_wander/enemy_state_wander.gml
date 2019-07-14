//behaviour
	counter += 1;
	x += moveX;
	y += moveY;
	
	//transition triggers
	if(counter >= room_speed * 3){
		var change = choose(0,1);
		switch(change){
			case 0: state = states.idle;
			case 1:
			my_dir = irandom_range(0,359);
			moveX = lengthdir_x(spd, my_dir);
			moveY = lengthdir_y(spd, my_dir);
			counter = 0;
		}	
	}	
	if(collision_circle(x,y, 64, obj_wili, false, false)){
		state = states.alert;
	}
	//sprite
	sprite_index = spr_skearriba;
	image_xscale = sign(moveX);