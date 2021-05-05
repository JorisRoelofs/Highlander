/// @description freeze
/// @param duration
function scr_freeze(argument0) {

	var _freezeDur = argument0;
	var _t = current_time + _freezeDur;

	while (current_time < _t) { };


}
