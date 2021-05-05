/// @description scr_isTouchingMe( sprite_index, image_index, xposition, yposition,xscale)
/// @param sprite_index
/// @param image_index
/// @param xposition
/// @param yposition
/// @param xscale

display_set_gui_size(ideal_width, ideal_height);

var mousex = device_mouse_x_to_gui(0); // GUI position of mouse's x coordinate
var mousey = device_mouse_y_to_gui(0); // GUI position of mouse's y coordinate

var sprite = argument[0];
var spriteNumber = argument[1];
var xx = argument[2]; // x position of the GUI element (insted of 0)
var yy = argument[3]; // y position of the GUI element (insted of 0)
var xscale = argument[4]

var spriteWidth = sprite_get_width(sprite)
var spriteHeight = sprite_get_height(sprite);
var radius = spriteWidth;



if (point_in_rectangle(mousex,mousey,xx-sprite/2,yy-spriteHeight/2,xx+spriteWidth/2,yy+spriteHeight/2)) { 
	isMouseTouchingMe = true;
	spriteNumber = 1;
	
} else {
	isMouseTouchingMe = false;
	spriteNumber =0;
}

draw_sprite_ext(sprite,spriteNumber,xx,yy,xscale,image_yscale,0,c_white,image_alpha);


