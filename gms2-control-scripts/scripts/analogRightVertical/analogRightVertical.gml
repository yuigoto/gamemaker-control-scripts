/// @description Returns the value for Right Vertical stick on the gamepad
/// @functon analogRightVertical
/// @param {real} slot Slot to check the input for

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

if (os_type == os_android) {
  switch (slot) {
    case 1:
      return gamepad_axis_value(slot, global.P1_ANALOG_RV);
      break;
    case 2:
      return gamepad_axis_value(slot, global.P2_ANALOG_RV);
      break;
    case 3:
      return gamepad_axis_value(slot, global.P3_ANALOG_RV);
      break;
    case 4:
      return gamepad_axis_value(slot, global.P4_ANALOG_RV);
      break;
  }
} else {
  switch (slot) {
    case 0:
      return gamepad_axis_value(slot, global.P1_ANALOG_RV);
      break;
    case 1:
      return gamepad_axis_value(slot, global.P2_ANALOG_RV);
      break;
    case 2:
      return gamepad_axis_value(slot, global.P3_ANALOG_RV);
      break;
    case 3:
      return gamepad_axis_value(slot, global.P4_ANALOG_RV);
      break;
  }
}
