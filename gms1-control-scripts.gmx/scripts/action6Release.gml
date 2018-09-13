/// action6Release(slot)

/**
 * Checks if the gamepad/key input for "ACTION 6" was just RELEASED on
 * the keyboard or gamepad.
 *
 * Returns a boolean value.
 *
 * @param {int} slot
 *      Optional, input slot to check for. Must be an integer value between
 *      0 and 3 (or 1 and 4 on Android). The default value is `0`. On Android
 *      this value starts at 1 because of bluetooth connections (more info
 *      on: https://goo.gl/JFs5e5)
 */

// Variables
var button, key, slot, slot_min, slot_max;

// Set slot
if (os_type == os_android) {
  slot      = 1;
  slot_min  = 1;
  slot_max  = 4;
} else {
  slot      = 0;
  slot_min  = 0;
  slot_max  = 3;
}

if (
  argument_count == 1 && is_real(argument[0])
  && argument[0] >= slot_min
  && argument[0] <= slot_max
) {
  slot = argument[0];
}

// Set input by slot for the player
if (os_type == os_android) {
  switch(slot) {
    case 1:
      button  = global.P1_PAD_ACTION6;
      key     = global.P1_KEY_ACTION6;
      break;
    case 2:
      button  = global.P2_PAD_ACTION6;
      key     = global.P2_KEY_ACTION6;
      break;
    case 3:
      button  = global.P3_PAD_ACTION6;
      key     = global.P3_KEY_ACTION6;
      break;
    case 4:
      button  = global.P4_PAD_ACTION6;
      key     = global.P4_KEY_ACTION6;
      break;
  }
} else {
  switch(slot) {
    case 0:
      button  = global.P1_PAD_ACTION6;
      key     = global.P1_KEY_ACTION6;
      break;
    case 1:
      button  = global.P2_PAD_ACTION6;
      key     = global.P2_KEY_ACTION6;
      break;
    case 2:
      button  = global.P3_PAD_ACTION6;
      key     = global.P3_KEY_ACTION6;
      break;
    case 3:
      button  = global.P4_PAD_ACTION6;
      key     = global.P4_KEY_ACTION6;
      break;
  }
}

return controlsStateCheck(slot, 2, key, button);
