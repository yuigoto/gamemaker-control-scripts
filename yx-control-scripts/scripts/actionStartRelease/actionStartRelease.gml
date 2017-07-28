/// @description  actionStartRelease(slot)
/// @function  actionStartRelease
/// @param slot

/**
 * Checks if the gamepad/key input for "START" was just released on the
 * keyboard or gamepad.
 *
 * Returns a boolean value.
 *
 * @param {int} slot 
 *      Optional, input slot to check for, must be a value between 0 and 3, 
 *      default: 0 (first slot), on Android default is 1 because of bluetooth 
 *      connections (https://goo.gl/JFs5e5)
 */

// Variables
var btn, key, slot, slot_min, slot_max;

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

// Check argument input for slot
if (
    argument_count == 1 && is_real(argument[0])
    && argument[0] >= slot_min && argument[0] <= slot_max
) {
    slot = argument[0];
}

// Get player key by the slot
if (os_type == os_android) {
    switch (slot) {
        // PLAYER 1
        case 1:
            btn = global.P1_PAD_START;
            key = global.P1_KEY_START;
            break;
        // PLAYER 2
        case 2:
            btn = global.P2_PAD_START;
            key = global.P2_KEY_START;
            break;
        // PLAYER 3
        case 3:
            btn = global.P3_PAD_START;
            key = global.P3_KEY_START;
            break;
        // PLAYER 4
        case 4:
            btn = global.P4_PAD_START;
            key = global.P4_KEY_START;
            break;
    }
} else {
    switch (slot) {
        // PLAYER 1
        case 0:
            btn = global.P1_PAD_START;
            key = global.P1_KEY_START;
            break;
        // PLAYER 2
        case 1:
            btn = global.P2_PAD_START;
            key = global.P2_KEY_START;
            break;
        // PLAYER 3
        case 2:
            btn = global.P3_PAD_START;
            key = global.P3_KEY_START;
            break;
        // PLAYER 4
        case 3:
            btn = global.P4_PAD_START;
            key = global.P4_KEY_START;
            break;
    }
}

// Check input state and return
return controlsStateCheck(slot, 2, key, btn);

