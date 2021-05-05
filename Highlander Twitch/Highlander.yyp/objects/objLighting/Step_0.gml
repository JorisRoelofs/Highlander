/// @description Insert description here
// You can write your code in this editor

if instance_exists(objPlayer) {
	target = objPlayer;
} else target = objDead;

if (surface_exists(surf)) {
	surface_set_target(surf);
	
	draw_set_color(cyellow);
	draw_set_alpha(1);
	draw_rectangle(0,0,room_width,room_height,false);
	
	//circles
	gpu_set_blendmode(bm_subtract);
	draw_set_color(c_white);
	draw_ellipse(target.x-(radiusX*.8)+ random_range(-.5,.5),target.y-(radiusY*.8)+ random_range(-.5,.5)
	,target.x+(radiusX*.8)+ random_range(-.5,.5),target.y+(radiusY*.6)+ random_range(-.5,.5),false);
	
	//draw_ellipse(target.x-(radiusX*.8)-2,target.y-(radiusY*.8)- 2
	//,target.x+(radiusX*.8)+ 2,target.y+(radiusY*.6)+ 2, true);


	//gpu_set_blendmode(bm_normal);
	//draw_set_alpha(.2);
	
	////circles
	//gpu_set_blendmode(bm_subtract);
	//draw_set_color(c_white);
	//draw_ellipse(target.x-radiusX+ random_range(-1,1,),target.y-radiusY+ random_range(-1,1,)
	//,target.x+radiusX+ random_range(-1,1,),target.y+(radiusY*.8)+ random_range(-1,1,),false);
	
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	
	surface_reset_target();
	
} else {
	surf = surface_create(room_width,room_height);
	surface_set_target(surf);
	draw_clear_alpha(c_black,0);
	surface_reset_target();
}