/// scr_In_view();

// this script is a quicker-ish check on seeing if the object is in the view

if (x >= view_xview[view_current]) {
    if (x <= (view_xview[view_current] + view_wview[view_current])) {
        if (y >= view_yview[view_current]) {
            if (y <= (view_yview[view_current] + view_hview[view_current])) {
                return true;
            }
        }
    }
}

return false;