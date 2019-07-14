/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (place_meeting(x, y, obj_wili)){
	if(keyboard_check_pressed(vk_space)){
	if(myTextbox == noone){
		myTextbox =instance_create_layer(x, y, "text", obj_textbox);
		myTextbox.text = mytext;
		myTextbox.creator = self;
		myTextbox.name = myName;
	}
	}
}else{
	if(myTextbox != noone){
	instance_destroy(myTextbox);
	myTextbox = noone;
	}
}