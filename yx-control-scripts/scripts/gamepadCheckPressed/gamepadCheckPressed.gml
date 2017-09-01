/// @description Checks if any key was just pressed on the gamepad
/// @function gamepadCheck
/// @param {real} slot Gamepad slot to check

// Check slot (default is always 0)
var slot = 0;
if (
    argument_count == 1 
    && is_real(argument[0]) 
    && argument[0] >= 0 
    && argument[0] < 4
) {
    slot = argument[0];
}

// Check button
for (var i = gp_face1; i < gp_axisrv; i++) {
    if (gamepad_button_check_pressed(slot, i)) return i;
}

// False, if nothing was pressed
return false;
