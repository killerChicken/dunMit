/// Movimiento

//Botones
var botonDer,botonDer2, botonIzq, botonIzq2, botonArri, botonArri2, botonAba, botonAba2;
botonDer   = keyboard_check(ord("D"));
botonDer2  = keyboard_check(vk_right);
botonIzq   = keyboard_check(ord("A"));
botonIzq2  = keyboard_check(vk_left);
botonArri  = keyboard_check(ord("W"));
botonArri2 = keyboard_check(vk_up);
botonAba   = keyboard_check(ord("S"));
botonAba2  = keyboard_check(vk_down);

var botonCorre, botonCorre2;
botonCorre  = keyboard_check(vk_shift);
botonCorre2 = keyboard_check(ord("Z"));

//Movimientos
if (((botonDer) or (botonDer2)) and (place_free(x + velColision, y))){
	x += velCaminar;
	image_speed = velCaminar/3;
	sprite_index = spr_linkDer;
	if ((botonCorre) or (botonCorre2)){
		velCaminar = 7;
	}
}
else if (((botonIzq) or (botonIzq2)) and (place_free(x - velColision, y))){
	x -= velCaminar;
	image_speed = velCaminar/3;
	sprite_index = spr_linkIzq
	if ((botonCorre) or (botonCorre2)){
		velCaminar = 7;
	}
}
else if (((botonArri) or (botonArri2)) and (place_free(x, y - velColision))){
	y -= velCaminar;
	image_speed = velCaminar/3;
	sprite_index = spr_linkArri;
	if ((botonCorre) or (botonCorre2)){
		velCaminar = 7;
	}
}
else if (((botonAba) or (botonAba2)) and (place_free(x, y + velColision))){
	y += velCaminar;
	image_speed = velCaminar/3;
	sprite_index = spr_linkAba;
	if ((botonCorre) or (botonCorre2)){
		velCaminar = 7;
	}
}
else {
	image_speed = 0;
	image_index = 0;
	velCaminar  = 3.5;
}