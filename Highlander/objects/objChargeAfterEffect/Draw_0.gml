/// @description:
draw_set_color(cyellow);
draw_circle(x,y,t,true);

t += (tMax - t)*0.1;
if(t > 0.95*(tMax - t)) instance_destroy();