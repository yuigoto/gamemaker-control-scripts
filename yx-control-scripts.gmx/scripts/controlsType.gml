/// controlsType(slot, type) 

/**
 * Sets the global for controller type for a user.
 * 
 * P.s.: Kinda missing ternary operators from GMS2. T_T
 * 
 * @param {int} slot 
 *      Which slot is being defined now 
 * @param {int} type 
 *      Which type of control is being used (0: keyboard, 1: gamepad)
 */

var slot = argument[0];
var type = argument[1];

// Check slot and define current type, according to the OS
if (os_type == os_android) {
    switch (slot) {
        // PLAYER 1
        case 1: 
            if (type == 0) global.P1_CONTROLS  = "keyboard";
            if (type == 1) global.P1_CONTROLS  = "gamepad";
            break;
        // PLAYER 2
        case 2: 
            if (type == 0) global.P2_CONTROLS  = "keyboard";
            if (type == 1) global.P2_CONTROLS  = "gamepad";
            break;
        // PLAYER 3
        case 3: 
            if (type == 0) global.P3_CONTROLS  = "keyboard";
            if (type == 1) global.P3_CONTROLS  = "gamepad";
            break;
        // PLAYER 4
        case 4: 
            if (type == 0) global.P4_CONTROLS  = "keyboard";
            if (type == 1) global.P4_CONTROLS  = "gamepad";
            break;
    }
} else {
    switch (slot) {
        // PLAYER 1
        case 0: 
            if (type == 0) global.P1_CONTROLS  = "keyboard";
            if (type == 1) global.P1_CONTROLS  = "gamepad";
            break;
        // PLAYER 2
        case 1: 
            if (type == 0) global.P2_CONTROLS  = "keyboard";
            if (type == 1) global.P2_CONTROLS  = "gamepad";
            break;
        // PLAYER 3
        case 2: 
            if (type == 0) global.P3_CONTROLS  = "keyboard";
            if (type == 1) global.P3_CONTROLS  = "gamepad";
            break;
        // PLAYER 4
        case 3: 
            if (type == 0) global.P4_CONTROLS  = "keyboard";
            if (type == 1) global.P4_CONTROLS  = "gamepad";
            break;
    }
}

