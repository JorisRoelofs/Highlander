/// @description Insert description here
ini_open("saveData.ini");
audioSetting = ini_read_real("settings", "audioSetting",0);
window_set_fullscreen(ini_read_real("settings", "fullscreenSetting",0));
ini_close();