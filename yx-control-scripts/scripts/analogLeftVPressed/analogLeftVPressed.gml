/// @description Checks if analog stick Left Vertical was PRESSED
/// @function analogLeftVPressed
/// @param {real} slot Which gamepad slot to check for

var button, key, slot, slot_min, slot_max;

// On Android, the first slot is always 1 because of bluetooth
slot        = (os_type == os_android) ? 1 : 0;
slot_min    = (os_type == os_android) ? 1 : 0;
slot_max    = (os_type == os_android) ? 4 : 3;

// Check argument input
if (
    argument_count == 1 && is_real(argument[0])
    && argument[0] >= slot_min && argument[0] <= slot_max
) {
    slot = argument[0];
}

// Code will return, only, if there's a `obj_controlsAnalog` object
if (instance_number(obj_controlsAnalog) > 0) {
    // Checks if android or not
    if (os_type == os_android) {
        switch (slot) {
            // PLAYER 1
            case 1: 
                if (obj_controlsAnalog.p1_lv_pressed) return true;
                break;
            // PLAYER 2
            case 2: 
                if (obj_controlsAnalog.p2_lv_pressed) return true;
                break;
            // PLAYER 3
            case 3: 
                if (obj_controlsAnalog.p3_lv_pressed) return true;
                break;
            // PLAYER 4
            case 4: 
                if (obj_controlsAnalog.p4_lv_pressed) return true;
                break;
        }
    } else {
        switch (slot) {
            // PLAYER 1
            case 0: 
                if (obj_controlsAnalog.p1_lv_pressed) return true;
                break;
            // PLAYER 2
            case 1: 
                if (obj_controlsAnalog.p2_lv_pressed) return true;
                break;
            // PLAYER 3
            case 2: 
                if (obj_controlsAnalog.p3_lv_pressed) return true;
                break;
            // PLAYER 4
            case 3: 
                if (obj_controlsAnalog.p4_lv_pressed) return true;
                break;
        }
    }
}

// No instance exists? Then it's false
return false;
