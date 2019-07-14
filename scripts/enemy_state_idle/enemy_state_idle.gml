//behaviour
	counter +=1;
	//transition triggers
	if(counter >= room_speed * 3){
		var change = choose(0,1);
		switch(change){
			case 0:state = states.wander;
			case 1: counter = 0; break;
		}
	}
	if (collision_circle(x,y, 64, obj_wili, false, false)){
		state = states.alert;
	}
	//sprite
	sprite_index = spr_sketo_atk_abajo;