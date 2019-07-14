/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(collision_line(x, y, x - 400, y + lookingAt, obj_hero, false, true)){
	show_debug_message("I can see you");
}
if(!timeToChange){
	lookingAt += 1;
	if(lookingAt ==200)
	timeToChange = true;
}
else{
	lookingAt -= 1;
	if(lookingAt ==0)
	timeToChange = false;
}