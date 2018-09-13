/// @description Sets the global for the user control scheme type
/// @function controlsType
/// @param {int} slot Which slot/player to define
/// @param {int} type Control scheme being used for the slot (0: keyboard, 1: gamepad)

// Variables
var slot = argument[0];
var type = argument[1];

if (os_type == os_android) {
  switch (slot) {
    // Player 1
    case 1:
      if (type == 0) global.P1_CONTROLS = "keyboard";
      if (type == 1) global.P1_CONTROLS = "gamepad";
      break;
    // Player 2
    case 2:
      if (type == 0) global.P2_CONTROLS = "keyboard";
      if (type == 1) global.P2_CONTROLS = "gamepad";
      break;
    // Player 3
    case 3:
      if (type == 0) global.P3_CONTROLS = "keyboard";
      if (type == 1) global.P3_CONTROLS = "gamepad";
      break;
    // Player 4
    case 4:
      if (type == 0) global.P4_CONTROLS = "keyboard";
      if (type == 1) global.P4_CONTROLS = "gamepad";
      break;
  }
} else {
  switch (slot) {
    // Player 1
    case 0:
      if (type == 0) global.P1_CONTROLS = "keyboard";
      if (type == 1) global.P1_CONTROLS = "gamepad";
      break;
    // Player 2
    case 1:
      if (type == 0) global.P2_CONTROLS = "keyboard";
      if (type == 1) global.P2_CONTROLS = "gamepad";
      break;
    // Player 3
    case 2:
      if (type == 0) global.P3_CONTROLS = "keyboard";
      if (type == 1) global.P3_CONTROLS = "gamepad";
      break;
    // Player 4
    case 3:
      if (type == 0) global.P4_CONTROLS = "keyboard";
      if (type == 1) global.P4_CONTROLS = "gamepad";
      break;
  }
}
