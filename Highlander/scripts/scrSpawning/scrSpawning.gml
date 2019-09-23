/// @description scrSpawning(x,y,instance,race)
/// @param x
/// @param y
/// @param instance
/// @param race

var _x = argument[0];
var _y = argument[1];
var _instance = argument[2];
var _race = argument[3];

raceSpr [0,1] = sprChickenIdle;
raceSpr [0,2] = sprChickenWalk;
raceSpr [0,3] = sprChickenWalk;

raceSpr [1,0] = sprBunnyIdle;
raceSpr [1,1] = sprBunnyWalk;
raceSpr [1,2] = sprBunnyHide;

raceSpr [2,0] = sprPigIdle;
raceSpr [2,1] = sprPigWalk;
raceSpr [2,2] = sprPigBoost;

raceSpr [3,0] = sprGoatIdle;
raceSpr [3,1] = sprGoatWalk;
raceSpr [3,2] = sprGoatDash; 


var _entity =  instance_create_layer(_x,_y , "Entities", _instance);
	_entity.race = _race;
	_entity.sprIdle = raceSpr[_race,0];
	_entity.sprWalk = raceSpr[_race,1];
	_entity.sprAbility = raceSpr[_race,2];


