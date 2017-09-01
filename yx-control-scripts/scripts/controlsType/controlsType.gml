/// @description Sets the global for controller type for a user
/// @function controlsType
/// @param {real} slot Which slot is being defined
/// @param {real} type Which type of control is being used (0: keyboard, 1: gamepad)

var slot = argument[0];
var type = argument[1];

// Check slot and define current type, according to the OS
if (os_type == os_android) {
    switch (slot) {
        // PLAYER 1
        case 1: 
            global.P1_CONTROLS  = (type == 1) ? "gamepad" : "keyboard";
            break;
        // PLAYER 2
        case 2: 
            global.P2_CONTROLS  = (type == 1) ? "gamepad" : "keyboard";
            break;
        // PLAYER 3
        case 3: 
            global.P3_CONTROLS  = (type == 1) ? "gamepad" : "keyboard";
            break;
        // PLAYER 4
        case 4: 
            global.P4_CONTROLS  = (type == 1) ? "gamepad" : "keyboard";
            break;
    }
} else {
    switch (slot) {
        // PLAYER 1
        case 0: 
            global.P1_CONTROLS  = (type == 1) ? "gamepad" : "keyboard";
            break;
        // PLAYER 2
        case 1: 
            global.P2_CONTROLS  = (type == 1) ? "gamepad" : "keyboard";
            break;
        // PLAYER 3
        case 2: 
            global.P3_CONTROLS  = (type == 1) ? "gamepad" : "keyboard";
            break;
        // PLAYER 4
        case 3: 
            global.P4_CONTROLS  = (type == 1) ? "gamepad" : "keyboard";
            break;
    }
}
