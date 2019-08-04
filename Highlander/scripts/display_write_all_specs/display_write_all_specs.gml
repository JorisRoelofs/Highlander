/// @description display_write_all_specs(x,y);
/// @param {real} x
/// @param {real} y
var _str="";
_str+=display_write_specs(display.screen)+"\n";
_str+=display_write_specs(display.window)+"\n";
_str+=display_write_specs(display.gui)+"\n";
_str+=display_write_specs(display.app_surface)+"\n";
_str+=display_write_specs(display.view)+"\n";
_str+=display_write_specs(display.zoom)+"\n";
draw_set_halign(fa_left);
draw_text(argument0,argument1,_str);



