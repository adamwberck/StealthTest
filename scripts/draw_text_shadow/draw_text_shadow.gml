function draw_text_shadow(tx, ty, str, off, alpha) {
	draw_set_alpha(.4*alpha);
	draw_set_color(c_black);
	draw_text(tx+off,ty+off,str);
	draw_set_alpha(1);

}
