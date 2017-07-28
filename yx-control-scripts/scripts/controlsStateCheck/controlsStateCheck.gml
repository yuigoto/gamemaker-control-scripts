/// @description  controlsStateCheck(slot, state, key, button)
/// @function  controlsStateCheck
/// @param slot
/// @param  state
/// @param  key
/// @param  button

/**
 * Checks button states for press/pressed/release. Returns boolean.
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

// Humanize arguments
var slot = argument[0];
var state = argument[1];
var key = argument[2];
var btn = argument[3];

// Check status and return
switch(state) {
    // Just pressed
    case 1:
        if (gamepad_button_check_pressed(slot, btn)) {
            return true;
        }
        return keyboard_check_pressed(key);
        break;
    // Released
    case 2:
        if (gamepad_button_check_released(slot, btn)) {
            return true;
        }
        return keyboard_check_released(key);
        break;
    // Pressed/down
    default:
        if (gamepad_button_check(slot, btn)) {
            return true;
        }
        return keyboard_check(key);
        break;
}

