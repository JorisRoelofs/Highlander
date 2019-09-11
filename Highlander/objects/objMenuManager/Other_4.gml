/// @description Insert description here
var _bctr = ideal_width/2;

with instance_create_layer(_bctr,78,"Menu",objButton) {
	buttonEffect = startGame;
	sprite_index = sprBtnPlay;
	startX = x;
	startY = y;
}


with instance_create_layer(_bctr,ideal_height-96,"Menu",objButton) {
	buttonEffect = quitGame;
	sprite_index = sprBtnQuit;
	startX = x;
	startY = y;
}

with instance_create_layer(ideal_width-96,ideal_height-128,"Menu",objButton) {
	buttonEffect = switchFullscreen;
	sprite_index = sprBtnFS;
	startX = x;
	startY = y;
}

with instance_create_layer(ideal_width-96,ideal_height-96,"Menu",objButton) {
	buttonEffect = switchSound;
	sprite_index = sprBtnMute;
	startX = x;
	startY = y;
}

with instance_create_layer(ideal_width/6*2,128,"Menu",objButtonSelection) {
	buttonEffect = 0;
	sprite_index = sprChickenWalk;
	startX = x;
	startY = y;
}

with instance_create_layer(ideal_width/6*3,128,"Menu",objButtonSelection) {
	buttonEffect = 1;
	sprite_index = sprSpear;
	startX = x;
	startY = y;
}

with instance_create_layer(ideal_width/6*4,128,"Menu",objButtonSelection) {
	buttonEffect = 2;
	sprite_index = sprBow;
	startX = x;
	startY = y;
}