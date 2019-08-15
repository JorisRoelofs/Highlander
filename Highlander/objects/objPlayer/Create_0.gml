/// @description Insert description here
#region setup
event_inherited();
scr_singleton();

randomize();
x = random_range(78,room_width-78);
y = random_range(78,room_height-78);
#endregion

#region variables
//WHAT DO THESE DO?
pointerTargetX = 0.5*ideal_width;
pointerTargetY = 0.5*ideal_height;

//UI crown scale
mode = 0;
crownScale = 1;
rate = 0.0015;

//animation
footstep = 0;
#endregion