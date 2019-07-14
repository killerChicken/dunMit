/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (collision_circle(x,y, 25, obj_hero, true, true)){
	//image_alpha = .25;

	obj_hero.image_blend=c_maroon;
}
else
	//image_alpha = 1;
	
	obj_hero.image_blend=c_white;

	
