/// @description: Save Records


if(place < placeRecord) placeRecord = place;
if(kills > killRecord) killRecord = kills;

ini_open("saveData.ini")
	ini_write_real("records","placeRecord",placeRecord);
	ini_read_real("records","killRecord",killRecord);
ini_close();