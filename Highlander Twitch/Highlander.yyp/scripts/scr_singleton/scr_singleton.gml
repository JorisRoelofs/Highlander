/// @description: prevent multiple objects from existing
function scr_singleton() {
	if(instance_number (object_index) > 1)
	{
		instance_destroy();
		exit;
	}


}
