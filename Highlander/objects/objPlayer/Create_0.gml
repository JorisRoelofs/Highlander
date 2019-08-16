/// @description: Spawn Location & Animation


//General Setup
event_inherited();
scr_singleton();


//Spawn Location
randomize();
x = random_range(100,room_width-100);
y = random_range(100,room_height-100);


//UI Pointer
pointerTargetX = 0.5*ideal_width;
pointerTargetY = 0.5*ideal_height;

mode = 0;
crownScale = 1;
rate = 0.0015;


//Animation
footstep = 0;