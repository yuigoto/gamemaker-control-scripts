/// @description Checks if Right Horizontal analog stick was just PRESSED
/// @functon analogRightHorizontalPressed
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

// This code only works if an instance of `obj_controlsAnalog` exists.
// You only need a single instance of it to map/check the analog states.
if (instance_number(obj_controlsAnalog) > 0) {
  if (os_type == os_android) {
    switch (slot) {
      case 1:
        if (obj_controlsAnalog.p1_rh_pressed) {
          return true;
        }
        break;
      case 2:
        if (obj_controlsAnalog.p2_rh_pressed) {
          return true;
        }
        break;
      case 3:
        if (obj_controlsAnalog.p3_rh_pressed) {
          return true;
        }
        break;
      case 4:
        if (obj_controlsAnalog.p4_rh_pressed) {
          return true;
        }
        break;
    }
  } else {
    switch (slot) {
      case 0:
        if (obj_controlsAnalog.p1_rh_pressed) {
          return true;
        }
        break;
      case 1:
        if (obj_controlsAnalog.p2_rh_pressed) {
          return true;
        }
        break;
      case 2:
        if (obj_controlsAnalog.p3_rh_pressed) {
          return true;
        }
        break;
      case 3:
        if (obj_controlsAnalog.p4_rh_pressed) {
          return true;
        }
        break;
    }
  }
}

return false;
