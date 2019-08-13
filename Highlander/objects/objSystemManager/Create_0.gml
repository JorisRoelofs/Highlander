/// @description Insert description here
scr_singleton();

window_set_cursor(cr_none);
cursor_sprite = sprCursor;

ini_open("saveData.ini");
audioSetting = ini_read_real("settings", "audioSetting",0);
window_set_fullscreen(ini_read_real("settings", "fullscreenSetting",0));
ini_close();

save_data = ds_map_create();
file_name = "SaveData.sav";

////Initialize Save Data
//data_set("kills",0);


data_load();