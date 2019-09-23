/// @description: First Frame Timer
var _dis = 200;
var _ran_x = random_range(_dis,room_width-_dis);
var _ran_y = random_range(_dis,room_height-_dis);

scrSpawning(_ran_x,_ran_y,objPlayer,objSystemManager.race);

alarm[0]=1;