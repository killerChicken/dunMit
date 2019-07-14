my_dir = point_direction(x,y, obj_hero.x, obj_hero.y)
	moveX = lengthdir_x(spd, my_dir);
	moveY = lengthdir_y(spd, my_dir);
	x += moveX;
	y += moveY;
	
	//transition triggers
	if(!collision_circle(x,y, 64, obj_wili, false,false)){
	 state = states.idle;	
	}	
	if(collision_circle(x,y, 32, obj_wili, false,false)){
	 state = states.attack;	
	}
	//sprite
	sprite_index = spr_skearriba;
	image_xscale = sign(moveX);