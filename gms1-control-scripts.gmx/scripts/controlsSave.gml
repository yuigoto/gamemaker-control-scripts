/// controlsSave()

/**
 * Saves the current control scheme bindings from the globals.
 */

var controls_data, section;

// Open ini file
controls_data = working_directory + "/config/controls.ini";
ini_open(controls_data);

for (var i = 1; i <= 4; i++) {
  section = "PLAYER " + string(i);

  switch (i) {
    // Player 1
    case 1:
      ini_write_string(section, "scheme",     global.P1_CONTROLS);

      ini_write_real(section, "kb_up",        global.P1_KEY_UP);
      ini_write_real(section, "kb_dn",        global.P1_KEY_DN);
      ini_write_real(section, "kb_lt",        global.P1_KEY_LT);
      ini_write_real(section, "kb_rt",        global.P1_KEY_RT);
      ini_write_real(section, "kb_start",     global.P1_KEY_START);
      ini_write_real(section, "kb_select ",   global.P1_KEY_SELECT);
      ini_write_real(section, "kb_action1",   global.P1_KEY_ACTION1);
      ini_write_real(section, "kb_action2",   global.P1_KEY_ACTION2);
      ini_write_real(section, "kb_action3",   global.P1_KEY_ACTION3);
      ini_write_real(section, "kb_action4",   global.P1_KEY_ACTION4);
      ini_write_real(section, "kb_action5",   global.P1_KEY_ACTION5);
      ini_write_real(section, "kb_action6",   global.P1_KEY_ACTION6);
      ini_write_real(section, "kb_action7",   global.P1_KEY_ACTION7);
      ini_write_real(section, "kb_action8",   global.P1_KEY_ACTION8);

      ini_write_real(section, "pad_up",       global.P1_PAD_UP);
      ini_write_real(section, "pad_dn",       global.P1_PAD_DN);
      ini_write_real(section, "pad_lt",       global.P1_PAD_LT);
      ini_write_real(section, "pad_rt",       global.P1_PAD_RT);
      ini_write_real(section, "pad_start",    global.P1_PAD_START);
      ini_write_real(section, "pad_select",   global.P1_PAD_SELECT);
      ini_write_real(section, "pad_action1",  global.P1_PAD_ACTION1);
      ini_write_real(section, "pad_action2",  global.P1_PAD_ACTION2);
      ini_write_real(section, "pad_action3",  global.P1_PAD_ACTION3);
      ini_write_real(section, "pad_action4",  global.P1_PAD_ACTION4);
      ini_write_real(section, "pad_action5",  global.P1_PAD_ACTION5);
      ini_write_real(section, "pad_action6",  global.P1_PAD_ACTION6);
      ini_write_real(section, "pad_action7",  global.P1_PAD_ACTION7);
      ini_write_real(section, "pad_action8",  global.P1_PAD_ACTION8);

      ini_write_real(section, "analog_lh",    global.P1_PAD_ANALOG_LH);
      ini_write_real(section, "analog_lv",    global.P1_PAD_ANALOG_LV);
      ini_write_real(section, "analog_rh",    global.P1_PAD_ANALOG_RH);
      ini_write_real(section, "analog_rv",    global.P1_PAD_ANALOG_RV);
      break;
    // Player 2
    case 2:
      ini_write_string(section, "scheme",     global.P2_CONTROLS);

      ini_write_real(section, "kb_up",        global.P2_KEY_UP);
      ini_write_real(section, "kb_dn",        global.P2_KEY_DN);
      ini_write_real(section, "kb_lt",        global.P2_KEY_LT);
      ini_write_real(section, "kb_rt",        global.P2_KEY_RT);
      ini_write_real(section, "kb_start",     global.P2_KEY_START);
      ini_write_real(section, "kb_select ",   global.P2_KEY_SELECT);
      ini_write_real(section, "kb_action1",   global.P2_KEY_ACTION1);
      ini_write_real(section, "kb_action2",   global.P2_KEY_ACTION2);
      ini_write_real(section, "kb_action3",   global.P2_KEY_ACTION3);
      ini_write_real(section, "kb_action4",   global.P2_KEY_ACTION4);
      ini_write_real(section, "kb_action5",   global.P2_KEY_ACTION5);
      ini_write_real(section, "kb_action6",   global.P2_KEY_ACTION6);
      ini_write_real(section, "kb_action7",   global.P2_KEY_ACTION7);
      ini_write_real(section, "kb_action8",   global.P2_KEY_ACTION8);

      ini_write_real(section, "pad_up",       global.P2_PAD_UP);
      ini_write_real(section, "pad_dn",       global.P2_PAD_DN);
      ini_write_real(section, "pad_lt",       global.P2_PAD_LT);
      ini_write_real(section, "pad_rt",       global.P2_PAD_RT);
      ini_write_real(section, "pad_start",    global.P2_PAD_START);
      ini_write_real(section, "pad_select",   global.P2_PAD_SELECT);
      ini_write_real(section, "pad_action1",  global.P2_PAD_ACTION1);
      ini_write_real(section, "pad_action2",  global.P2_PAD_ACTION2);
      ini_write_real(section, "pad_action3",  global.P2_PAD_ACTION3);
      ini_write_real(section, "pad_action4",  global.P2_PAD_ACTION4);
      ini_write_real(section, "pad_action5",  global.P2_PAD_ACTION5);
      ini_write_real(section, "pad_action6",  global.P2_PAD_ACTION6);
      ini_write_real(section, "pad_action7",  global.P2_PAD_ACTION7);
      ini_write_real(section, "pad_action8",  global.P2_PAD_ACTION8);

      ini_write_real(section, "analog_lh",    global.P2_PAD_ANALOG_LH);
      ini_write_real(section, "analog_lv",    global.P2_PAD_ANALOG_LV);
      ini_write_real(section, "analog_rh",    global.P2_PAD_ANALOG_RH);
      ini_write_real(section, "analog_rv",    global.P2_PAD_ANALOG_RV);
      break;
    // Player 3
    case 3:
      ini_write_string(section, "scheme",     global.P3_CONTROLS);

      ini_write_real(section, "kb_up",        global.P3_KEY_UP);
      ini_write_real(section, "kb_dn",        global.P3_KEY_DN);
      ini_write_real(section, "kb_lt",        global.P3_KEY_LT);
      ini_write_real(section, "kb_rt",        global.P3_KEY_RT);
      ini_write_real(section, "kb_start",     global.P3_KEY_START);
      ini_write_real(section, "kb_select ",   global.P3_KEY_SELECT);
      ini_write_real(section, "kb_action1",   global.P3_KEY_ACTION1);
      ini_write_real(section, "kb_action2",   global.P3_KEY_ACTION2);
      ini_write_real(section, "kb_action3",   global.P3_KEY_ACTION3);
      ini_write_real(section, "kb_action4",   global.P3_KEY_ACTION4);
      ini_write_real(section, "kb_action5",   global.P3_KEY_ACTION5);
      ini_write_real(section, "kb_action6",   global.P3_KEY_ACTION6);
      ini_write_real(section, "kb_action7",   global.P3_KEY_ACTION7);
      ini_write_real(section, "kb_action8",   global.P3_KEY_ACTION8);

      ini_write_real(section, "pad_up",       global.P3_PAD_UP);
      ini_write_real(section, "pad_dn",       global.P3_PAD_DN);
      ini_write_real(section, "pad_lt",       global.P3_PAD_LT);
      ini_write_real(section, "pad_rt",       global.P3_PAD_RT);
      ini_write_real(section, "pad_start",    global.P3_PAD_START);
      ini_write_real(section, "pad_select",   global.P3_PAD_SELECT);
      ini_write_real(section, "pad_action1",  global.P3_PAD_ACTION1);
      ini_write_real(section, "pad_action2",  global.P3_PAD_ACTION2);
      ini_write_real(section, "pad_action3",  global.P3_PAD_ACTION3);
      ini_write_real(section, "pad_action4",  global.P3_PAD_ACTION4);
      ini_write_real(section, "pad_action5",  global.P3_PAD_ACTION5);
      ini_write_real(section, "pad_action6",  global.P3_PAD_ACTION6);
      ini_write_real(section, "pad_action7",  global.P3_PAD_ACTION7);
      ini_write_real(section, "pad_action8",  global.P3_PAD_ACTION8);

      ini_write_real(section, "analog_lh",    global.P3_PAD_ANALOG_LH);
      ini_write_real(section, "analog_lv",    global.P3_PAD_ANALOG_LV);
      ini_write_real(section, "analog_rh",    global.P3_PAD_ANALOG_RH);
      ini_write_real(section, "analog_rv",    global.P3_PAD_ANALOG_RV);
      break;
    // Player 4
    case 4:
      ini_write_string(section, "scheme",     global.P4_CONTROLS);

      ini_write_real(section, "kb_up",        global.P4_KEY_UP);
      ini_write_real(section, "kb_dn",        global.P4_KEY_DN);
      ini_write_real(section, "kb_lt",        global.P4_KEY_LT);
      ini_write_real(section, "kb_rt",        global.P4_KEY_RT);
      ini_write_real(section, "kb_start",     global.P4_KEY_START);
      ini_write_real(section, "kb_select ",   global.P4_KEY_SELECT);
      ini_write_real(section, "kb_action1",   global.P4_KEY_ACTION1);
      ini_write_real(section, "kb_action2",   global.P4_KEY_ACTION2);
      ini_write_real(section, "kb_action3",   global.P4_KEY_ACTION3);
      ini_write_real(section, "kb_action4",   global.P4_KEY_ACTION4);
      ini_write_real(section, "kb_action5",   global.P4_KEY_ACTION5);
      ini_write_real(section, "kb_action6",   global.P4_KEY_ACTION6);
      ini_write_real(section, "kb_action7",   global.P4_KEY_ACTION7);
      ini_write_real(section, "kb_action8",   global.P4_KEY_ACTION8);

      ini_write_real(section, "pad_up",       global.P4_PAD_UP);
      ini_write_real(section, "pad_dn",       global.P4_PAD_DN);
      ini_write_real(section, "pad_lt",       global.P4_PAD_LT);
      ini_write_real(section, "pad_rt",       global.P4_PAD_RT);
      ini_write_real(section, "pad_start",    global.P4_PAD_START);
      ini_write_real(section, "pad_select",   global.P4_PAD_SELECT);
      ini_write_real(section, "pad_action1",  global.P4_PAD_ACTION1);
      ini_write_real(section, "pad_action2",  global.P4_PAD_ACTION2);
      ini_write_real(section, "pad_action3",  global.P4_PAD_ACTION3);
      ini_write_real(section, "pad_action4",  global.P4_PAD_ACTION4);
      ini_write_real(section, "pad_action5",  global.P4_PAD_ACTION5);
      ini_write_real(section, "pad_action6",  global.P4_PAD_ACTION6);
      ini_write_real(section, "pad_action7",  global.P4_PAD_ACTION7);
      ini_write_real(section, "pad_action8",  global.P4_PAD_ACTION8);

      ini_write_real(section, "analog_lh",    global.P4_PAD_ANALOG_LH);
      ini_write_real(section, "analog_lv",    global.P4_PAD_ANALOG_LV);
      ini_write_real(section, "analog_rh",    global.P4_PAD_ANALOG_RH);
      ini_write_real(section, "analog_rv",    global.P4_PAD_ANALOG_RV);
      break;
  }
}

// Close ini file
ini_close();
