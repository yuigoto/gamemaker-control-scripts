/// @description Checks the current state for a key or button, returns a boolean
/// @function controlsStateCheck(slot, state, key, button)
/// @param {int} slot Control/player slot to test
/// @param {int} state State to check for, from one of the available ones
/// @param {int} key Keyboard key code
/// @param {int} button Gamepad button code

/**
 * Also, defines the global control scheme value.
 *
 * Available states:
 * 0 - Down;
 * 1 - Pressed;
 * 2 - Release;
 */

var slot    = argument[0];
var state   = argument[1];
var key     = argument[2];
var button  = argument[3];

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
  // Down
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

return false;
