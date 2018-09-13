/// analogLeftVerticalRelease(slot)

/**
 * Checks if Left Vertical analog stick was just RELEASED on
 * the gamepad.
 *
 * Returns a boolean value.
 *
 * @param {int} slot
 *      Optional, input slot to check for. Must be an integer value between
 *      0 and 3 (or 1 and 4 on Android). The default value is `0`. On Android
 *      this value starts at 1 because of bluetooth connections (more info
 *      on: https://goo.gl/JFs5e5)
 */

var slot, slot_min, slot_max;

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

// This code only works if an instance of `obj_controlsAnalog` exists.
// You only need a single instance of it to map/check the analog states.
if (instance_number(obj_controlsAnalog) > 0) {
  if (os_type == os_android) {
    switch (slot) {
      case 1:
        if (obj_controlsAnalog.p1_lv_release) {
          return true;
        }
        break;
      case 2:
        if (obj_controlsAnalog.p2_lv_release) {
          return true;
        }
        break;
      case 3:
        if (obj_controlsAnalog.p3_lv_release) {
          return true;
        }
        break;
      case 4:
        if (obj_controlsAnalog.p4_lv_release) {
          return true;
        }
        break;
    }
  } else {
    switch (slot) {
      case 0:
        if (obj_controlsAnalog.p1_lv_release) {
          return true;
        }
        break;
      case 1:
        if (obj_controlsAnalog.p2_lv_release) {
          return true;
        }
        break;
      case 2:
        if (obj_controlsAnalog.p3_lv_release) {
          return true;
        }
        break;
      case 3:
        if (obj_controlsAnalog.p4_lv_release) {
          return true;
        }
        break;
    }
  }
}

return false;
