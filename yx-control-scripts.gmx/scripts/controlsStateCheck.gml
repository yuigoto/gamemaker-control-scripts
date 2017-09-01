/// controlsStateCheck(slot, state, key, button)

/**
 * Checks the current state for a key or button, returns boolean.
 * 
 * Also, defines the current global for controller type.
 *
 * Available states are:
 * 0 - Press;
 * 1 - Pressed;
 * 2 - Release;
 *
 * @param {int} slot 
 *      Slot to check
 * @param {int} state 
 *      State to check
 * @param {int} key 
 *      Key code to test for state
 * @param {int} button 
 *      Button code to test for state
 */

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

