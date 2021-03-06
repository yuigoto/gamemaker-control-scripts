/// controlsFile()

/**
 * Creates the INI configuration file with default control bindings.
 */

var controls_data, section;

controls_data = working_directory + "/config/controls.ini";

ini_open(controls_data);

// Generate control schemes for 4 players
for (var i = 1; i <= 4; i++) {
  // Set section
  section = "PLAYER " + string(i);

  // Set Keyboard controls
  switch(i) {
    case 1:
      ini_write_string(section, "scheme", "keyboard");
      ini_write_real(section, "kb_up", ord("W"));
      ini_write_real(section, "kb_dn", ord("S"));
      ini_write_real(section, "kb_lt", ord("A"));
      ini_write_real(section, "kb_rt", ord("D"));
      ini_write_real(section, "kb_start", vk_enter);
      ini_write_real(section, "kb_select", vk_escape);
      ini_write_real(section, "kb_action1", ord("U"));
      ini_write_real(section, "kb_action2", ord("I"));
      ini_write_real(section, "kb_action3", ord("O"));
      ini_write_real(section, "kb_action4", ord("P"));
      ini_write_real(section, "kb_action5", ord("H"));
      ini_write_real(section, "kb_action6", ord("J"));
      ini_write_real(section, "kb_action7", ord("K"));
      ini_write_real(section, "kb_action8", ord("L"));
      break;
    default:
      // Only player 1 has keyboard controls by default!
      ini_write_string(section, "scheme", "gamepad");
      ini_write_real(section, "kb_up", -1);
      ini_write_real(section, "kb_dn", -1);
      ini_write_real(section, "kb_lt", -1);
      ini_write_real(section, "kb_rt", -1);
      ini_write_real(section, "kb_start", -1);
      ini_write_real(section, "kb_select", -1);
      ini_write_real(section, "kb_action1", -1);
      ini_write_real(section, "kb_action2", -1);
      ini_write_real(section, "kb_action3", -1);
      ini_write_real(section, "kb_action4", -1);
      ini_write_real(section, "kb_action5", -1);
      ini_write_real(section, "kb_action6", -1);
      ini_write_real(section, "kb_action7", -1);
      ini_write_real(section, "kb_action8", -1);
      break;
  }

  // Set Gamepad controls
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

  // Set gamepad analog sticks
  ini_write_real(section, "analog_lh", gp_axislh);
  ini_write_real(section, "analog_lv", gp_axislv);
  ini_write_real(section, "analog_rh", gp_axisrh);
  ini_write_real(section, "analog_rv", gp_axisrv);
}

ini_close();
