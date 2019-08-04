/// scr_In_view();

var _cur_x = camera_get_view_x(view_camera[0]);
var _cur_y = camera_get_view_y(view_camera[0]);

draw_text(32,32,_cur_x);


if (x >= _cur_x) {
    if (x <= _cur_x + ideal_width) {
        if (y >= _cur_y) {
            if (y <= (_cur_y + ideal_height)) {
                return true;
            }
        }
    }
}

return false;