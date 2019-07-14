if (collision_circle(x, y, 48, obj_link, true, true)){
	//image_alpha = .75;
	obj_link.image_blend = c_maroon;
}
else{
	//image_alpha = 1;	
	obj_link.image_blend = c_white;
} 