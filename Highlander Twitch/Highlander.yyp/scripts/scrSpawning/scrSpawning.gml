/// @description scrSpawning(x,y,instance,race)
/// @param x
/// @param y
/// @param instance
/// @param race
function scrSpawning() {

	var _x = argument[0];
	var _y = argument[1];
	var _instance = argument[2];
	var _race = argument[3];
	var _name = argument[4];
	var _twitchId = argument[5];

	var i = 0;
	raceSpr [0,i++] = sprChickenIdle;
	raceSpr [0,i++] = sprChickenWalk;
	raceSpr [0,i++] = sprChickenWalk;

	var i = 0;
	raceSpr [1,i++] = sprBunnyIdle;
	raceSpr [1,i++] = sprBunnyWalk;
	raceSpr [1,i++] = sprBunnyHide;

	var i = 0;
	raceSpr [2,i++] = sprPigIdle;
	raceSpr [2,i++] = sprPigWalk;
	raceSpr [2,i++] = sprPigBoost;

	var i = 0;
	raceSpr [3,i++] = sprGoatIdle;
	raceSpr [3,i++] = sprGoatWalk;
	raceSpr [3,i++] = sprGoatDash;

	var _entity =  instance_create_layer(_x,_y , "Entities", _instance);
		_entity.race = _race;
		_entity.sprIdle = raceSpr[_race,0];
		_entity.sprWalk = raceSpr[_race,1];
		_entity.sprAbility = raceSpr[_race,2];
		_entity.name = _name;
		_entity.twitchId = _twitchId;

	return _entity;
}
