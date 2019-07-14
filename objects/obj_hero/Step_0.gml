/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(keyboard_check(ord("D")) && place_free(x + collisionSpeed, y)){
	x += walkspeed;
	image_speed = walkspeed / 3;
	sprite_index = spr_prota_der;
	
}
if(keyboard_check(ord("A")) && place_free(x - collisionSpeed, y)){
	x -= walkspeed;
	image_speed = walkspeed / 3;
	sprite_index = spr_prota_izq;
	
}
if(keyboard_check(ord("S")) and place_free(x, y + collisionSpeed)){
	y += walkspeed;
	image_speed = walkspeed / 3;
	sprite_index = spr_prota_abajo;
	
}
if(keyboard_check(ord("W")) && place_free(x, y - collisionSpeed)){
	y -= walkspeed;
	image_speed = walkspeed / 3;
	sprite_index = spr_prota_arriba;
	
}
if(keyboard_check(vk_nokey)){
	image_speed = 0;
	image_index = 0;
	walkspeed = 3.5;
}
if(keyboard_check(vk_shift)){
	walkspeed = 7;
}
//aca parte del video de dialogo
if(mouse_check_button_pressed(mb_left)){
	instance_create_layer(mouse_x, mouse_y, "text", obj_textbox);
}