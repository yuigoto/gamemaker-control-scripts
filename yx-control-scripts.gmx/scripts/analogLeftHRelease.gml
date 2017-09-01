/// @description Checks if analog stick Left Horizontal was RELEASED
/// @function analogLeftHRelease
/// @param {real} slot Which gamepad slot to check for

var button, key, slot, slot_min, slot_max;

// By default the slot is always 0 (1st slot), save for Android
if (os_type == os_android) {
    // ANDROID
    slot = 1; // Slot value
    slot_min = 1; // Min accepted value
    slot_max = 4; // Max accepted value
} else {
    // OTHER FORMATS
    slot = 0;
    slot_min = 0;
    slot_max = 3;
}

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
                if (obj_controlsAnalog.p1_lh_release) return true;
                break;
            // PLAYER 2
            case 2: 
                if (obj_controlsAnalog.p2_lh_release) return true;
                break;
            // PLAYER 3
            case 3: 
                if (obj_controlsAnalog.p3_lh_release) return true;
                break;
            // PLAYER 4
            case 4: 
                if (obj_controlsAnalog.p4_lh_release) return true;
                break;
        }
    } else {
        switch (slot) {
            // PLAYER 1
            case 0: 
                if (obj_controlsAnalog.p1_lh_release) return true;
                break;
            // PLAYER 2
            case 1: 
                if (obj_controlsAnalog.p2_lh_release) return true;
                break;
            // PLAYER 3
            case 2: 
                if (obj_controlsAnalog.p3_lh_release) return true;
                break;
            // PLAYER 4
            case 3: 
                if (obj_controlsAnalog.p4_lh_release) return true;
                break;
        }
    }
}

// No instance exists? Then it's false
return false;
