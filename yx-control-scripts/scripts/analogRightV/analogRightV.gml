/// @description Returns the value for Left Analog Vertical
/// @function analogLeftV
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

// Checks if android or not
if (os_type == os_android) {
    switch (slot) {
        // PLAYER 1
        case 1: 
            return gamepad_axis_value(slot, global.P1_ANALOG_RV);
            break;
        // PLAYER 2
        case 2: 
            return gamepad_axis_value(slot, global.P2_ANALOG_RV);
            break;
        // PLAYER 3
        case 3: 
            return gamepad_axis_value(slot, global.P3_ANALOG_RV);
            break;
        // PLAYER 4
        case 4: 
            return gamepad_axis_value(slot, global.P4_ANALOG_RV);
            break;
    }
} else {
    switch (slot) {
        // PLAYER 1
        case 0: 
            return gamepad_axis_value(slot, global.P1_ANALOG_RV);
            break;
        // PLAYER 2
        case 1: 
            return gamepad_axis_value(slot, global.P2_ANALOG_RV);
            break;
        // PLAYER 3
        case 2: 
            return gamepad_axis_value(slot, global.P3_ANALOG_RV);
            break;
        // PLAYER 4
        case 3: 
            return gamepad_axis_value(slot, global.P4_ANALOG_RV);
            break;
    }
}

// No instance exists? Then it's false
return false;
