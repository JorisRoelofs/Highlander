/// @description Save Data & Free Surface


//Save Data
if(place < placeRecord) placeRecord = place;
if(kills > killRecord) killRecord = kills;


//Free Surface
surface_free(backgroundSurface);