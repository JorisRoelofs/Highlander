for(var i=0;i<5;i++)
{
	if(i=4) 
	{
		var _dis = 0;
		draw_set_color(cyellow);
	}
	else
	{
		var _dis = 1;
		draw_set_color(cpurple);

	}
	_dir = 360*i/5;
	draw_set_font(fnt16);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text(ideal_width/2+lengthdir_x(_dis,_dir),argument[1]+lengthdir_y(_dis,_dir),argument[0]);
}