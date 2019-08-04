/// @description Insert description here
for (var i = 0; i < 99; ++i) {
    instance_create_layer(random_range(64,room_width-64), random_range(64,room_height-64), "Entities", objEnemy);
}