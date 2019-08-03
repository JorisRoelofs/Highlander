/// @description Insert description here
if (instance_count < 100) {
    var dif = 100 - instance_count;
    while (--dif > 0) {
        instance_create_layer(random(room_width), random(room_height), "Instances", objEnemy);
        }
    }