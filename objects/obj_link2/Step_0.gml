///Movimientos

//Controles
var keyArri, keyAba, keyDer, keyIzq, keyCorrer, keySigilo;

keyArri = -keyboard_check(vk_up);
keyAba = keyboard_check(vk_down);
keyIzq = -keyboard_check(vk_left);
keyDer = keyboard_check(vk_right);
keyCorrer = keyboard_check(ord("Z"));
keySigilo = keyboard_check(ord("A"));

//Tipos de velocidad
if (keyCorrer){
	tipoVel = velCorrer;
}
else if (keySigilo){
	tipoVel = velSigilo; 
}
else{
	tipoVel = velCaminar;
}

//Movimiento
moviH = (keyIzq  + keyDer) * global.pausa;
moviV = (keyArri + keyAba) * global.pausa;

//Dirección
if (global.pausa == 1){
	if (moviH > 0){
		direccion = "Derecha";
		miraX = 1;
		miraY = 0;
	}
	else if (moviH < 0){
		direccion = "Izquierda";
		miraX = -1;
		miraY = 0;
	}
	
	if (moviV > 0){
		direccion = "Abajo";
		miraX = 0;
		miraY = 1;
	}
	else if (moviV < 0){
		direccion = "Arriba";
		miraX = 0;
		miraY = -1;
	}
}
//Desplazamiento horizontal
if (moviH != 0){
	vX = scr_deAPoco(vX, tipoVel * moviH, acele);
}
else{
	vX = scr_deAPoco(vX, tipoVel * moviH, fricc);
}
//Desplazamiento vertical
if (moviV != 0){
	vY = scr_deAPoco(vY, tipoVel * moviV, acele);
}
else{
	vY = scr_deAPoco(vY, tipoVel * moviV, fricc);
}

x += vX;
y += vY;