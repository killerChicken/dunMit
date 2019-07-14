/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// dibujar textbox
draw_rectangle(x-2, y-2, x+boxWidth+2, y+boxHeight+2, false);
draw_sprite(spr_box, 0, x,y);
// dibujar text
draw_set_font(fnt_text);
if(charCount < string_length(text[page])){
	charCount += 0.5;
}
textpart= string_copy( text[page], 1, charCount);
//dibujo del nombre
draw_set_color(c_red);
draw_set_halign(fa_center);
draw_text(x+(boxWidth/2),y+yBuffer, name);
draw_set_halign(fa_left);
// dibujo parte del texto
draw_set_color(c_white);
draw_text_ext(x+xBuffer, y+stringHeight+yBuffer, textpart, stringHeight, boxWidth - (2*xBuffer));