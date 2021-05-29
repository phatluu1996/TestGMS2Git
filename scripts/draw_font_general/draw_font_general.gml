function draw_font_general(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	/* draw_font(x,y,text,sprite,start,hsep,vsep,color)

	backslash (\) is the escape character
	\\ Single Backslash
	\n Newline
	\crrrgggbbb Color (rrr, ggg, and bbb have value 000-255)
	\avvv Alpha (vvv has value after decimal 000-999, 999 => 1.0)
	If the escape character is used without a \, n, c, or a,
	the escape character is ignored and the next character is displayed
	*/

	var t,hc,vc,xc,yc,c,a,m,v;
	t = argument2
	hc = sprite_get_width(argument3) + argument5
	vc = sprite_get_height(argument3) + argument6
	xc = 0; yc = 0
	c = argument7
	a = 1

	for (m = 1; m < string_length(t)+1; m += 1) {
	 v = string_char_at(t,m)
	 if (v = "\\") {
	  m += 1
	  v = string_char_at(t,m)
	  if (v = "n") {
	   xc = 0
	   yc += 1
	   continue
	  }
	  if (v == "c") {
	   var r,g,b;
	   r = real(string_copy(t,m+1,3))
	   g = real(string_copy(t,m+4,3))
	   b = real(string_copy(t,m+7,3))
	   c = make_color_rgb(r,g,b)
	   m += 9
	   continue
	  }
	  if (v == "a") {
	   a = real(string_copy(t,m+1,3)) / 999
	   m += 3
	   continue
	  }
	 }
	 draw_sprite_ext(argument3,ord(v)- argument4,argument0+xc*hc,argument1+yc*vc,1,1,0,c,
	a)
	 xc += 1
	}



}
