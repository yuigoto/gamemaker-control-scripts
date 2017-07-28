/// controlsFile()

/**
 * Creates an INI to store keyboard and gamepad control bindings, if one doesn't 
 * exist for the project.
 */
var section, controls_data;

// Opening file
controls_data = working_directory + "/config/controls.ini";

// Opening INI
ini_open(controls_data);

// Generate control scheme for up to 4 players
for (var i = 1; i <= 4; i++) {
    // Define section
    var section = "PLAYER " + string(i);

    // Keyboard controls
    switch (i) {
        case 1:
            ini_write_real(section, "kb_up", vk_up);
            ini_write_real(section, "kb_dn", vk_down);
            ini_write_real(section, "kb_lt", vk_left);
            ini_write_real(section, "kb_rt", vk_right);
            ini_write_real(section, "kb_start", vk_enter);
            ini_write_real(section, "kb_select ", vk_escape);
            ini_write_real(section, "kb_action1", ord("x"));
            ini_write_real(section, "kb_action2", ord("c"));
            ini_write_real(section, "kb_action3", ord("v"));
            ini_write_real(section, "kb_action4", ord("b"));
            ini_write_real(section, "kb_action5", ord("h"));
            ini_write_real(section, "kb_action6", ord("j"));
            ini_write_real(section, "kb_action7", ord("k"));
            ini_write_real(section, "kb_action8", ord("l"));
            break;
        default:
            ini_write_real(section, "kb_up", 0);
            ini_write_real(section, "kb_dn", 0);
            ini_write_real(section, "kb_lt", 0);
            ini_write_real(section, "kb_rt", 0);
            ini_write_real(section, "kb_start", 0);
            ini_write_real(section, "kb_select ", 0);
            ini_write_real(section, "kb_action1", 0);
            ini_write_real(section, "kb_action2", 0);
            ini_write_real(section, "kb_action3", 0);
            ini_write_real(section, "kb_action4", 0);
            ini_write_real(section, "kb_action5", 0);
            ini_write_real(section, "kb_action6", 0);
            ini_write_real(section, "kb_action7", 0);
            ini_write_real(section, "kb_action8", 0);
            break;
    }

    // Gamepad controls
    ini_write_real(section, "pad_up", gp_padu);
    ini_write_real(section, "pad_dn", gp_padd);
    ini_write_real(section, "pad_lt", gp_padl);
    ini_write_real(section, "pad_rt", gp_padr);
    ini_write_real(section, "pad_start", gp_start);
    ini_write_real(section, "pad_select", gp_select);
    ini_write_real(section, "pad_action1", gp_face1);
    ini_write_real(section, "pad_action2", gp_face2);
    ini_write_real(section, "pad_action3", gp_face3);
    ini_write_real(section, "pad_action4", gp_face4);
    ini_write_real(section, "pad_action5", gp_shoulderl);
    ini_write_real(section, "pad_action6", gp_shoulderlb);
    ini_write_real(section, "pad_action7", gp_shoulderr);
    ini_write_real(section, "pad_action8", gp_shoulderrb);

    // Analog controls
    ini_write_real(section, "analog_lh", gp_axislh);
    ini_write_real(section, "analog_lv", gp_axislv);
    ini_write_real(section, "analog_rh", gp_axisrh);
    ini_write_real(section, "analog_rv", gp_axisrv);
}



// CLOSE
// ----------------------------------------------------------------------
ini_close();

