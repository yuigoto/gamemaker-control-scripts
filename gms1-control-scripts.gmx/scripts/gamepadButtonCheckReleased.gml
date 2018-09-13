/// gamepadButtonCheckReleased(slot)

/**
 * Returns the code for the button that was just released on the gamepad.
 * 
 * @param {int} slot 
 *      Optional, the slot for the gamepad to test for, default: 0 (1 on Android)
 */

var slot, slot_min, slot_max;

if (os_type == os_android) {
  slot_min  = 1;
  slot_max  = 4;
} else {
  slot_min  = 0;
  slot_max  = 3;
}

if (
  argument_count == 1 
  && is_real(argument[0]) 
  && argument[0] >= 0 
  && argument[0] < 4 
) {
  slot = argument[0];
} else {
  slot = slot_min;
}

for (var i = gp_face1; i < gp_axisrv; i++) {
  if (gamepad_button_check_released(slot, i)) {
    return i;
  }
}

return false;
