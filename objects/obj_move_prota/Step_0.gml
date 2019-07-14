/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(keyboard_check(vk_left)){
	x-=3
	x -= walkspeed;
	image_speed = walkspeed / 3;
	sprite_index = spr_skeizq;
}


if(keyboard_check(vk_right)){
	x+=3
	x += walkspeed;
	image_speed = walkspeed / 3;
	sprite_index = spr_skederecha;
}
if(keyboard_check(vk_up)){
	y-=3
	y -= walkspeed;
	image_speed = walkspeed / 3;
	sprite_index = spr_skearriba;
}
if(keyboard_check(vk_down)) {
	y+=3
	y += walkspeed;
	image_speed = walkspeed / 3;
	sprite_index = spr_skeabajo;
}
if(keyboard_check(vk_shift)){
	walkspeed = 7;
}
