if(my_slash == noone){
		my_slash = instance_create_layer(x+ image_xscale*16,y,"Instances",obj_slash);
		my_slash.creator = id;
		my_slash.image_xscale = image_xscale;
		image_index = 0;
	}	
	//transition triggers
	if(image_index > image_number-1){state = states.alert;}
	
	//sprite
	sprite_index = spr_sketo_atk_arriba;