/// @description Insert description here
var _bctr = ideal_width/2;
buttonId = 0;

with instance_create_layer(32,32,"Menu",objButton) {
	buttonEffect = switchFullscreen;
	sprite_index = sprBtnFS;
	startX = x;
	startY = y;
	buttonId = other.buttonId;
}
buttonId++;

with instance_create_layer(32,76,"Menu",objButton) {
	buttonEffect = switchSound;
	sprite_index = sprBtnMute;
	startX = x;
	startY = y;
	buttonId = other.buttonId;
}
buttonId++;

with instance_create_layer(ideal_width/6*2,96,"Menu",objButtonSelection) {
	buttonEffect = 0;
	draw = raceSelec[0];
	sprite_index = sprChickenWalk;
	startX = x;
	startY = y;
	buttonId = other.buttonId;
}
buttonId++;

with instance_create_layer(ideal_width/6*3,96,"Menu",objButtonSelection) {
	buttonEffect = 1;
	sprite_index = sprSpear;
	startX = x;
	startY = y;
	buttonId = other.buttonId;
}
buttonId++;

with instance_create_layer(ideal_width/6*4,96,"Menu",objButtonSelection) {
	buttonEffect = 2;
	sprite_index = sprBow;
	startX = x;
	startY = y;
	buttonId = other.buttonId;
}
buttonId++;

with instance_create_layer(_bctr,160,"Menu",objButton) {
	buttonEffect = startGame;
	sprite_index = sprBtnPlay;
	startX = x;
	startY = y;
	buttonId = other.buttonId;
}
buttonId++;

with instance_create_layer(_bctr,196,"Menu",objButton) {
	buttonEffect = quitGame;
	sprite_index = sprBtnQuit;
	startX = x;
	startY = y;
	buttonId = other.buttonId;
}
buttonId++;