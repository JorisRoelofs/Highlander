/// @description Insert description here
event_inherited();

randomize();
alarm[0] = 60;

enum enemyState {
	spawn = 0,
	idle = 1,
	gunChase = 2,
	knifeHunt = 3,
	shooter = 4,
	death = 5
}

state = enemyState.spawn;
target = noone;
check = 60;
distance = 256;
randomDirectionTime = 0;
meleeStartTime = random(-1);
meleeEndTime = random(-1);
newTargetTime = 0;