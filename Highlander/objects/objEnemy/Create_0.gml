/// @description: Variables


//Setup
event_inherited();


//Variables
target = noone;
distance = 256;
randomDirectionTime = 0;
weaponStartTime = random(-1);
weaponEndTime = random(-1);
newTargetTime = 0;


//EnemyStates
//enum enemyState {
//	spawn = 0,
//	idle = 1,
//	gunChase = 2,
//	knifeHunt = 3,
//	shooter = 4,
//	death = 5
//}
//state = enemyState.spawn;