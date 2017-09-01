/// @description Updates analog watcher vars, use in 'obj_controlsAnalog' only!
/// @function controlsAnalogObjectStep

// CONFIRM DEADZONES
if (!gamepad_get_axis_deadzone(p1_id)) gamepad_set_axis_deadzone(p1_id, 0.2);
if (!gamepad_get_axis_deadzone(p2_id)) gamepad_set_axis_deadzone(p2_id, 0.2);
if (!gamepad_get_axis_deadzone(p3_id)) gamepad_set_axis_deadzone(p3_id, 0.2);
if (!gamepad_get_axis_deadzone(p4_id)) gamepad_set_axis_deadzone(p4_id, 0.2);

// CURRENT ANALOG VALUES
var p1_lh_curr = gamepad_axis_value(p1_id, p1_lh);
var p1_lv_curr = gamepad_axis_value(p1_id, p1_lv);
var p1_rh_curr = gamepad_axis_value(p1_id, p1_rh);
var p1_rv_curr = gamepad_axis_value(p1_id, p1_rv);
var p2_lh_curr = gamepad_axis_value(p2_id, p2_lh);
var p2_lv_curr = gamepad_axis_value(p2_id, p2_lv);
var p2_rh_curr = gamepad_axis_value(p2_id, p2_rh);
var p2_rv_curr = gamepad_axis_value(p2_id, p2_rv);
var p3_lh_curr = gamepad_axis_value(p3_id, p3_lh);
var p3_lv_curr = gamepad_axis_value(p3_id, p3_lv);
var p3_rh_curr = gamepad_axis_value(p3_id, p3_rh);
var p3_rv_curr = gamepad_axis_value(p3_id, p3_rv);
var p4_lh_curr = gamepad_axis_value(p4_id, p4_lh);
var p4_lv_curr = gamepad_axis_value(p4_id, p4_lv);
var p4_rh_curr = gamepad_axis_value(p4_id, p4_rh);
var p4_rv_curr = gamepad_axis_value(p4_id, p4_rv);

// SETTING GLOBALS FOR CONTROLLER TYPE
if (p1_lh_curr != 0 || p1_lv_curr != 0 || p1_rh_curr != 0 || p1_rv_curr != 0) {
    if (global.P1_CONTROLS != "gamepad") controlsType(p1_id, 1);
}

if (p2_lh_curr != 0 || p2_lv_curr != 0 || p2_rh_curr != 0 || p2_rv_curr != 0) {
    if (global.P2_CONTROLS != "gamepad") controlsType(p2_id, 1);
}

if (p3_lh_curr != 0 || p3_lv_curr != 0 || p3_rh_curr != 0 || p3_rv_curr != 0) {
    if (global.P3_CONTROLS != "gamepad") controlsType(p3_id, 1);
}

if (p4_lh_curr != 0 || p4_lv_curr != 0 || p4_rh_curr != 0 || p4_rv_curr != 0) {
    if (global.P4_CONTROLS != "gamepad") controlsType(p4_id, 1);
}

// PLAYER 1 ANALOG CHECKS (LEFT IS LOGGED, FOR DEBUGGING)
// ----------------------------------------------------------------------

// P1 LEFT HORIZONTAL
if (p1_lh_curr != p1_lh_prev) {
    // Checking delta
    if (p1_lh_curr == 0 && p1_lh_down) {
        // Release status
        p1_lh_down    = false;
        p1_lh_release = true;
        
        // Set release alarm
        alarm[1] = 1;
    } else if (p1_lh_prev == 0 && !p1_lh_down) {
        // Down status
        p1_lh_down    = true;
        p1_lh_pressed = true;
        
        // Set pressed alarm
        alarm[0] = 1;
    }
    
    // Update with current state
    p1_lh_prev = p1_lh_curr;
}

// P1 LEFT VERTICAL
if (p1_lv_curr != p1_lv_prev) {
    // Checking delta
    if (p1_lv_curr == 0 && p1_lv_down) {
        // Release status
        p1_lv_down    = false;
        p1_lv_release = true;
        
        // Set release alarm
        alarm[1] = 1;
    } else if (p1_lv_prev == 0 && !p1_lv_down) {
        // Down status
        p1_lv_down    = true;
        p1_lv_pressed = true;
        
        // Set pressed alarm
        alarm[0] = 1;
    }
    
    // Update with current state
    p1_lv_prev = p1_lv_curr;
}

// P1 RIGHT HORIZONTAL
if (p1_rh_curr != p1_rh_prev) {
    // Checking delta
    if (p1_rh_curr == 0 && p1_rh_down) {
        // Release status
        p1_rh_down    = false;
        p1_rh_release = true;
        
        // Set release alarm
        alarm[1] = 1;
    } else if (p1_rh_prev == 0 && !p1_rh_down) {
        // Down status
        p1_rh_down    = true;
        p1_rh_pressed = true;
        
        // Set pressed alarm
        alarm[0] = 1;
    }
    
    // Update with current state
    p1_rh_prev = p1_rh_curr;
}

// P1 RIGHT VERTICAL
if (p1_rv_curr != p1_rv_prev) {
    // Checking delta
    if (p1_rv_curr == 0 && p1_rv_down) {
        // Release status
        p1_rv_down    = false;
        p1_rv_release = true;
        
        // Set release alarm
        alarm[1] = 1;
    } else if (p1_rv_prev == 0 && !p1_rv_down) {
        // Down status
        p1_rv_down    = true;
        p1_rv_pressed = true;
        
        // Set pressed alarm
        alarm[0] = 1;
    }
    
    // Update with current state
    p1_rv_prev = p1_rv_curr;
}

// PLAYER 2 ANALOG CHECKS
// ----------------------------------------------------------------------

// P2 LEFT HORIZONTAL
if (p2_lh_curr != p2_lh_prev) {
    // Checking delta
    if (p2_lh_curr == 0 && p2_lh_down) {
        // Release status
        p2_lh_down    = false;
        p2_lh_release = true;
        
        // Set release alarm
        alarm[1] = 1;
    } else if (p2_lh_prev == 0 && !p2_lh_down) {
        // Down status
        p2_lh_down    = true;
        p2_lh_pressed = true;
        
        // Set pressed alarm
        alarm[0] = 1;
    }
    
    // Update with current state
    p2_lh_prev = p2_lh_curr;
}

// P2 LEFT VERTICAL
if (p2_lv_curr != p2_lv_prev) {
    // Checking delta
    if (p2_lv_curr == 0 && p2_lv_down) {
        // Release status
        p2_lv_down    = false;
        p2_lv_release = true;
        
        // Set release alarm
        alarm[1] = 1;
    } else if (p2_lv_prev == 0 && !p2_lv_down) {
        // Down status
        p2_lv_down    = true;
        p2_lv_pressed = true;
        
        // Set pressed alarm
        alarm[0] = 1;
    }
    
    // Update with current state
    p2_lv_prev = p2_lv_curr;
}

// P2 RIGHT HORIZONTAL
if (p2_rh_curr != p2_rh_prev) {
    // Checking delta
    if (p2_rh_curr == 0 && p2_rh_down) {
        // Release status
        p2_rh_down    = false;
        p2_rh_release = true;
        
        // Set release alarm
        alarm[1] = 1;
    } else if (p2_rh_prev == 0 && !p2_rh_down) {
        // Down status
        p2_rh_down    = true;
        p2_rh_pressed = true;
        
        // Set pressed alarm
        alarm[0] = 1;
    }
    
    // Update with current state
    p2_rh_prev = p2_rh_curr;
}

// P2 RIGHT VERTICAL
if (p2_rv_curr != p2_rv_prev) {
    // Checking delta
    if (p2_rv_curr == 0 && p2_rv_down) {
        // Release status
        p2_rv_down    = false;
        p2_rv_release = true;
        
        // Set release alarm
        alarm[1] = 1;
    } else if (p2_rv_prev == 0 && !p2_rv_down) {
        // Down status
        p2_rv_down    = true;
        p2_rv_pressed = true;
        
        // Set pressed alarm
        alarm[0] = 1;
    }
    
    // Update with current state
    p2_rv_prev = p2_rv_curr;
}

// PLAYER 3 ANALOG CHECKS
// ----------------------------------------------------------------------

// P3 LEFT HORIZONTAL
if (p3_lh_curr != p3_lh_prev) {
    // Checking delta
    if (p3_lh_curr == 0 && p3_lh_down) {
        // Release status
        p3_lh_down    = false;
        p3_lh_release = true;
        
        // Set release alarm
        alarm[1] = 1;
    } else if (p3_lh_prev == 0 && !p3_lh_down) {
        // Down status
        p3_lh_down    = true;
        p3_lh_pressed = true;
        
        // Set pressed alarm
        alarm[0] = 1;
    }
    
    // Update with current state
    p3_lh_prev = p3_lh_curr;
}

// P3 LEFT VERTICAL
if (p3_lv_curr != p3_lv_prev) {
    // Checking delta
    if (p3_lv_curr == 0 && p3_lv_down) {
        // Release status
        p3_lv_down    = false;
        p3_lv_release = true;
        
        // Set release alarm
        alarm[1] = 1;
    } else if (p3_lv_prev == 0 && !p3_lv_down) {
        // Down status
        p3_lv_down    = true;
        p3_lv_pressed = true;
        
        // Set pressed alarm
        alarm[0] = 1;
    }
    
    // Update with current state
    p3_lv_prev = p3_lv_curr;
}

// P3 RIGHT HORIZONTAL
if (p3_rh_curr != p3_rh_prev) {
    // Checking delta
    if (p3_rh_curr == 0 && p3_rh_down) {
        // Release status
        p3_rh_down    = false;
        p3_rh_release = true;
        
        // Set release alarm
        alarm[1] = 1;
    } else if (p3_rh_prev == 0 && !p3_rh_down) {
        // Down status
        p3_rh_down    = true;
        p3_rh_pressed = true;
        
        // Set pressed alarm
        alarm[0] = 1;
    }
    
    // Update with current state
    p3_rh_prev = p3_rh_curr;
}

// P3 RIGHT VERTICAL
if (p3_rv_curr != p3_rv_prev) {
    // Checking delta
    if (p3_rv_curr == 0 && p3_rv_down) {
        // Release status
        p3_rv_down    = false;
        p3_rv_release = true;
        
        // Set release alarm
        alarm[1] = 1;
    } else if (p3_rv_prev == 0 && !p3_rv_down) {
        // Down status
        p3_rv_down    = true;
        p3_rv_pressed = true;
        
        // Set pressed alarm
        alarm[0] = 1;
    }
    
    // Update with current state
    p3_rv_prev = p3_rv_curr;
}

// PLAYER 4 ANALOG CHECKS
// ----------------------------------------------------------------------

// P4 LEFT HORIZONTAL
if (p4_lh_curr != p4_lh_prev) {
    // Checking delta
    if (p4_lh_curr == 0 && p4_lh_down) {
        // Release status
        p4_lh_down    = false;
        p4_lh_release = true;
        
        // Set release alarm
        alarm[1] = 1;
    } else if (p4_lh_prev == 0 && !p4_lh_down) {
        // Down status
        p4_lh_down    = true;
        p4_lh_pressed = true;
        
        // Set pressed alarm
        alarm[0] = 1;
    }
    
    // Update with current state
    p4_lh_prev = p4_lh_curr;
}

// P4 LEFT VERTICAL
if (p4_lv_curr != p4_lv_prev) {
    // Checking delta
    if (p4_lv_curr == 0 && p4_lv_down) {
        // Release status
        p4_lv_down    = false;
        p4_lv_release = true;
        
        // Set release alarm
        alarm[1] = 1;
    } else if (p4_lv_prev == 0 && !p4_lv_down) {
        // Down status
        p4_lv_down    = true;
        p4_lv_pressed = true;
        
        // Set pressed alarm
        alarm[0] = 1;
    }
    
    // Update with current state
    p4_lv_prev = p4_lv_curr;
}

// P4 RIGHT HORIZONTAL
if (p4_rh_curr != p4_rh_prev) {
    // Checking delta
    if (p4_rh_curr == 0 && p4_rh_down) {
        // Release status
        p4_rh_down    = false;
        p4_rh_release = true;
        
        // Set release alarm
        alarm[1] = 1;
    } else if (p4_rh_prev == 0 && !p4_rh_down) {
        // Down status
        p4_rh_down    = true;
        p4_rh_pressed = true;
        
        // Set pressed alarm
        alarm[0] = 1;
    }
    
    // Update with current state
    p4_rh_prev = p4_rh_curr;
}

// P4 RIGHT VERTICAL
if (p4_rv_curr != p4_rv_prev) {
    // Checking delta
    if (p4_rv_curr == 0 && p4_rv_down) {
        // Release status
        p4_rv_down    = false;
        p4_rv_release = true;
        
        // Set release alarm
        alarm[1] = 1;
    } else if (p4_rv_prev == 0 && !p4_rv_down) {
        // Down status
        p4_rv_down    = true;
        p4_rv_pressed = true;
        
        // Set pressed alarm
        alarm[0] = 1;
    }
    
    // Update with current state
    p4_rv_prev = p4_rv_curr;
}
