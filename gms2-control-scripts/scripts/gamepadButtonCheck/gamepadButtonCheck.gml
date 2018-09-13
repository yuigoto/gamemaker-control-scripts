/// @description Returns the code for the button currently being held down
/// @function gamepadButtonCheck
/// @param {real} slot Optional, the slot for the gamepad to test for, default: 0 (1 on Android)

var slot, slot_min, slot_max;

// Set slot
slot      = (os_type == os_android) ? 1 : 0;
slot_min  = (os_type == os_android) ? 1 : 0;
slot_max  = (os_type == os_android) ? 4 : 3;
// On Android this value starts at 1 because of bluetooth connections
// (more info on: https://goo.gl/JFs5e5)

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
  if (gamepad_button_check(slot, i)) {
    return i;
  }
}

return false;
