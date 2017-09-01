/// @description Checks the current state for a key or button 
/// @function controlsStateCheck 
/// @param {real} slot Slot to check 
/// @param {real} state One of the valid states (0: down, 1: pressed, 2: release)
/// @param {real} key Keyboard key ID
/// @param {real} button Gamepad button ID

var slot    = argument[0];
var state   = argument[1];
var key     = argument[2];
var button  = argument[3];

// Check state and return the appropriate value
switch (state) {
    // Pressed 
    case 1:
        if (gamepad_button_check_pressed(slot, button)) {
            controlsType(slot, 1);
            return true;
        }
        
        if (keyboard_check_pressed(key)) {
            controlsType(slot, 0);
            return true;
        }
        break;
    // Released 
    case 2:
        if (gamepad_button_check_released(slot, button)) {
            controlsType(slot, 1);
            return true;
        }
        
        if (keyboard_check_released(key)) {
            controlsType(slot, 0);
            return true;
        }
        break;
    // Default (Down/Press)
    default: 
        if (gamepad_button_check(slot, button)) {
            controlsType(slot, 1);
            return true;
        }
        
        if (keyboard_check(key)) {
            controlsType(slot, 0);
            return true;
        }
        break;
}

// False fallback
return false;
