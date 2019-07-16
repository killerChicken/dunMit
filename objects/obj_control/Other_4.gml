switch (room){
	case room0:
		if (instance_exists(obj_link2)){
			//instance_create(300, 200, obj_link2);
			instance_create_layer(300, 200, 1, obj_link2)
			view_object[0]  = obj_link2;
			view_hborder[0] = view_wview[0]/2;
			view_vborder[0] = view_hview[0]/2;
		}
	break;
}
