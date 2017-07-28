/// @description  Move

// Check H/V movement
var move_h = movementRight() - movementLeft();
var move_v = movementDown() - movementUp();

// Define H/V speed
if (move_h < 0) {
    current_hspd = approach(current_hspd, -max_spd, a_factor);
    if (current_hspd > 0) {
        current_hspd = approach(current_hspd, -max_spd, d_factor);
    }
} else if (move_h > 0) {
    current_hspd = approach(current_hspd, max_spd, a_factor);
    if (current_hspd < 0) {
        current_hspd = approach(current_hspd, max_spd, d_factor);
    }
} else {
    current_hspd = approach(current_hspd, 0, d_factor);
}

if (move_v < 0) {
    current_vspd = approach(current_vspd, -max_spd, a_factor);
    if (current_vspd > 0) {
        current_vspd = approach(current_vspd, -max_spd, d_factor);
    }
} else if (move_v > 0) {
    current_vspd = approach(current_vspd, max_spd, a_factor);
    if (current_vspd < 0) {
        current_vspd = approach(current_vspd, max_spd, d_factor);
    }
} else {
    current_vspd = approach(current_vspd, 0, d_factor);
}

// Define angle
var angle = point_direction(x, y, x + current_hspd, y + current_vspd);

// Get distance
var distn = point_distance(x, y, x + current_hspd, y + current_vspd);

// Get position from current angle + distance
var new_x = lengthdir_x(distn, angle);
var new_y = lengthdir_y(distn, angle);

// Set new X
x = clamp(x + new_x, 0 + (sprite_width / 2), room_width - (sprite_width / 2));
y = clamp(y + new_y, 0 + (sprite_height / 2), room_height - (sprite_height / 2));


