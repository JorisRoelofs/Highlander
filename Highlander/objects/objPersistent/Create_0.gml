/// @description Insert description here
ini_open("saveData.ini");
audioSetting = ini_read_real("settings", "audioSetting",0);
ini_close();