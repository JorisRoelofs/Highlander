/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(ideal_width,ideal_height);


if debug_mode {
	{
	draw_set_font(fnt16);
	draw_set_color(c_white);
	//display_write_all_specs(32,32);
	draw_text(display_get_gui_width()/2,display_get_gui_height()-10,fps);
	
	}
}


		{
		var _instanceAmount = instance_number(objEntity);
			
		draw_set_font(fnt16);
		draw_set_color(cyellow);
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		draw_text(ideal_width/2,16,_instanceAmount);
		}

