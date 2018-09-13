/// @description Checks if input for "SELECT" was just RELEASED
/// @function actionSelectRelease
/// @param {real} slot Slot to check the input for

// Variables
var button, key, slot, slot_min, slot_max;

// Set slot
slot      = (os_type == os_android) ? 1 : 0;
slot_min  = (os_type == os_android) ? 1 : 0;
slot_max  = (os_type == os_android) ? 4 : 3;
// On Android this value starts at 1 because of bluetooth connections
// (more info on: https://goo.gl/JFs5e5)

if (
  argument_count == 1 && is_real( argument[0] )
  && argument[0] >= slot_min
  && argument[0] <= slot_max
) {
  slot = argument[0];
}

// Set input by slot for the player
if (os_type == os_android) {
  switch(slot) {
    case 1:
      button  = global.P1_PAD_SELECT;
      key     = global.P1_KEY_SELECT;
      break;
    case 2:
      button  = global.P2_PAD_SELECT;
      key     = global.P2_KEY_SELECT;
      break;
    case 3:
      button  = global.P3_PAD_SELECT;
      key     = global.P3_KEY_SELECT;
      break;
    case 4:
      button  = global.P4_PAD_SELECT;
      key     = global.P4_KEY_SELECT;
      break;
  }
} else {
  switch(slot) {
    case 0:
      button  = global.P1_PAD_SELECT;
      key     = global.P1_KEY_SELECT;
      break;
    case 1:
      button  = global.P2_PAD_SELECT;
      key     = global.P2_KEY_SELECT;
      break;
    case 2:
      button  = global.P3_PAD_SELECT;
      key     = global.P3_KEY_SELECT;
      break;
    case 3:
      button  = global.P4_PAD_SELECT;
      key     = global.P4_KEY_SELECT;
      break;
  }
}

return controlsStateCheck(slot, 2, key, button);
