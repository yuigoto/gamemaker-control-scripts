/// analogRightHorizontal(slot)

/**
 * Returns the value for the Right Horizontal stick on the desired gamepad slot.
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

if (os_type == os_android) {
  switch (slot) {
    case 1:
      return gamepad_axis_value(slot, global.P1_ANALOG_RH);
      break;
    case 2:
      return gamepad_axis_value(slot, global.P2_ANALOG_RH);
      break;
    case 3:
      return gamepad_axis_value(slot, global.P3_ANALOG_RH);
      break;
    case 4:
      return gamepad_axis_value(slot, global.P4_ANALOG_RH);
      break;
  }
} else {
  switch (slot) {
    case 0:
      return gamepad_axis_value(slot, global.P1_ANALOG_RH);
      break;
    case 1:
      return gamepad_axis_value(slot, global.P2_ANALOG_RH);
      break;
    case 2:
      return gamepad_axis_value(slot, global.P3_ANALOG_RH);
      break;
    case 3:
      return gamepad_axis_value(slot, global.P4_ANALOG_RH);
      break;
  }
}
