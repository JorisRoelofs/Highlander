/// @description: First Frame Timer
var _dis = 200;

repeat(100)
{
	var _ran_x = random_range(_dis,room_width-_dis);
	var _ran_y = random_range(_dis,room_height-_dis);

	if(point_distance(_ran_x,_ran_y,objShrine.x,objShrine.y-48) > 100)
	{
		scrSpawning(_ran_x,_ran_y,objPlayer,objSystemManager.race);
		break;
	}
}

alarm[0]=1;