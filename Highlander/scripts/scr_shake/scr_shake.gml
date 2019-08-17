/// @description scr_shake(intensity,duration)
/// @param intensity
/// @param duration
var _intensity = argument0;
var _duration = argument1;

with (objDisplayManager) {
	shake = true;
	intensity = _intensity;
	alarm[1] = _duration;
}