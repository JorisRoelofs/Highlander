/// @description draws yellow text with a purple border
/// @param text
/// @param y
/// @param [x]
/// @param [font]
if(argument_count > 2) var _x = argument[2];
else var _x = ideal_width/2;

if(argument_count > 3) var font = argument[3];
else var font = fnt16;

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
	
	draw_set_font(font);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text(lengthdir_x(_dis,_dir)+_x,argument[1]+lengthdir_y(_dis,_dir),argument[0]);
}