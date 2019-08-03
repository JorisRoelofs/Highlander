/// @description Insert description here
// You can write your code in this editor
scr_singleton();

x = room_width/2;
y = room_height/2; 

target = self;

radiusX = 240;
radiusY = 240;

//create surface
surf = surface_create(room_width,room_height);

surface_set_target(surf);
draw_clear_alpha(c_black,0);

// reset to applications
surface_reset_target();