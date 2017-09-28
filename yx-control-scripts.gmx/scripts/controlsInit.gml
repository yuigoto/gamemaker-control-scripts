/// controlsInit(use_analog)

/**
 * Bootstraps all the controler-related globals.
 * 
 * Loads up control variables for up to 4 players.
 * 
 * @param {boolean} use_analog 
 *      Optional, set to true to create an analog watcher, so you can 
 *      use the analog emulator scripts
 */
 
// Variables
var controls_data, section, use_analog;

// Checking argument
if (argument_count == 1 && (argument[0] == true || argument[0] == false)) {
    use_analog = argument[0];
} else {
    // By default, analog's always on!
    use_analog = true;
}

// Opening the file
controls_data = working_directory + "/config/controls.ini";
if (!file_exists(controls_data)) controlsFile();

// Opening
ini_open(controls_data);

/**
 * Each player has a CONTROL_TYPE variable that can be set to "keyboard" 
 * or "gamepad", it can be used to change/trigger things specifically to 
 * each control scheme, like instructions or button icons.
 */

// PLAYER 1
// ----------------------------------------------------------------------

// Set section name
section = "PLAYER 1";

// P1 scheme
global.P1_CONTROLS      = "keyboard";

// Keyboard controls
global.P1_KEY_UP        = ini_read_real(section, "kb_up", ord("W"));
global.P1_KEY_DN        = ini_read_real(section, "kb_dn", ord("S"));
global.P1_KEY_LT        = ini_read_real(section, "kb_lt", ord("A"));
global.P1_KEY_RT        = ini_read_real(section, "kb_rt", ord("D"));
global.P1_KEY_START     = ini_read_real(section, "kb_start", vk_enter);
global.P1_KEY_SELECT    = ini_read_real(section, "kb_select", vk_escape);
global.P1_KEY_ACTION1   = ini_read_real(section, "kb_action1", ord("X"));
global.P1_KEY_ACTION2   = ini_read_real(section, "kb_action2", ord("C"));
global.P1_KEY_ACTION3   = ini_read_real(section, "kb_action3", ord("V"));
global.P1_KEY_ACTION4   = ini_read_real(section, "kb_action4", ord("B"));
global.P1_KEY_ACTION5   = ini_read_real(section, "kb_action5", ord("H"));
global.P1_KEY_ACTION6   = ini_read_real(section, "kb_action6", ord("J"));
global.P1_KEY_ACTION7   = ini_read_real(section, "kb_action7", ord("K"));
global.P1_KEY_ACTION8   = ini_read_real(section, "kb_action8", ord("L"));

// Gamepad controls
global.P1_PAD_UP        = ini_read_real(section, "pad_up", gp_padu);
global.P1_PAD_DN        = ini_read_real(section, "pad_dn", gp_padd);
global.P1_PAD_LT        = ini_read_real(section, "pad_lt", gp_padl);
global.P1_PAD_RT        = ini_read_real(section, "pad_rt", gp_padr);
global.P1_PAD_START     = ini_read_real(section, "pad_start", gp_start);
global.P1_PAD_SELECT    = ini_read_real(section, "pad_select", gp_select);
global.P1_PAD_ACTION1   = ini_read_real(section, "pad_action1", gp_face1);
global.P1_PAD_ACTION2   = ini_read_real(section, "pad_action2", gp_face2);
global.P1_PAD_ACTION3   = ini_read_real(section, "pad_action3", gp_face3);
global.P1_PAD_ACTION4   = ini_read_real(section, "pad_action4", gp_face4);
global.P1_PAD_ACTION5   = ini_read_real(section, "pad_action5", gp_shoulderl);
global.P1_PAD_ACTION6   = ini_read_real(section, "pad_action6", gp_shoulderlb);
global.P1_PAD_ACTION7   = ini_read_real(section, "pad_action7", gp_shoulderr);
global.P1_PAD_ACTION8   = ini_read_real(section, "pad_action8", gp_shoulderrb);

// Gamepad analog
global.P1_ANALOG_LH     = ini_read_real(section, "analog_lh", gp_axislh);
global.P1_ANALOG_LV     = ini_read_real(section, "analog_lv", gp_axislv);
global.P1_ANALOG_RH     = ini_read_real(section, "analog_rh", gp_axisrh);
global.P1_ANALOG_RV     = ini_read_real(section, "analog_rv", gp_axisrv);

// PLAYER 2
// ----------------------------------------------------------------------

// P2 scheme
global.P2_CONTROLS      = "gamepad";

// Keyboard controls
global.P2_KEY_UP        = ini_read_real(section, "kb_up", -1);
global.P2_KEY_DN        = ini_read_real(section, "kb_dn", -1);
global.P2_KEY_LT        = ini_read_real(section, "kb_lt", -1);
global.P2_KEY_RT        = ini_read_real(section, "kb_rt", -1);
global.P2_KEY_START     = ini_read_real(section, "kb_start", -1);
global.P2_KEY_SELECT    = ini_read_real(section, "kb_select", -1);
global.P2_KEY_ACTION1   = ini_read_real(section, "kb_action1", -1);
global.P2_KEY_ACTION2   = ini_read_real(section, "kb_action2", -1);
global.P2_KEY_ACTION3   = ini_read_real(section, "kb_action3", -1);
global.P2_KEY_ACTION4   = ini_read_real(section, "kb_action4", -1);
global.P2_KEY_ACTION5   = ini_read_real(section, "kb_action5", -1);
global.P2_KEY_ACTION6   = ini_read_real(section, "kb_action6", -1);
global.P2_KEY_ACTION7   = ini_read_real(section, "kb_action7", -1);
global.P2_KEY_ACTION8   = ini_read_real(section, "kb_action8", -1);

// Gamepad controls
global.P2_PAD_UP        = ini_read_real(section, "pad_up", gp_padu);
global.P2_PAD_DN        = ini_read_real(section, "pad_dn", gp_padd);
global.P2_PAD_LT        = ini_read_real(section, "pad_lt", gp_padl);
global.P2_PAD_RT        = ini_read_real(section, "pad_rt", gp_padr);
global.P2_PAD_START     = ini_read_real(section, "pad_start", gp_start);
global.P2_PAD_SELECT    = ini_read_real(section, "pad_select", gp_select);
global.P2_PAD_ACTION1   = ini_read_real(section, "pad_action1", gp_face1);
global.P2_PAD_ACTION2   = ini_read_real(section, "pad_action2", gp_face2);
global.P2_PAD_ACTION3   = ini_read_real(section, "pad_action3", gp_face3);
global.P2_PAD_ACTION4   = ini_read_real(section, "pad_action4", gp_face4);
global.P2_PAD_ACTION5   = ini_read_real(section, "pad_action5", gp_shoulderl);
global.P2_PAD_ACTION6   = ini_read_real(section, "pad_action6", gp_shoulderlb);
global.P2_PAD_ACTION7   = ini_read_real(section, "pad_action7", gp_shoulderr);
global.P2_PAD_ACTION8   = ini_read_real(section, "pad_action8", gp_shoulderrb);

// Gamepad analog
global.P2_ANALOG_LH     = ini_read_real(section, "analog_lh", gp_axislh);
global.P2_ANALOG_LV     = ini_read_real(section, "analog_lv", gp_axislv);
global.P2_ANALOG_RH     = ini_read_real(section, "analog_rh", gp_axisrh);
global.P2_ANALOG_RV     = ini_read_real(section, "analog_rv", gp_axisrv);

// PLAYER 3
// ----------------------------------------------------------------------

// P3 scheme
global.P3_CONTROLS      = "gamepad";

// Keyboard controls
global.P3_KEY_UP        = ini_read_real(section, "kb_up", -1);
global.P3_KEY_DN        = ini_read_real(section, "kb_dn", -1);
global.P3_KEY_LT        = ini_read_real(section, "kb_lt", -1);
global.P3_KEY_RT        = ini_read_real(section, "kb_rt", -1);
global.P3_KEY_START     = ini_read_real(section, "kb_start", -1);
global.P3_KEY_SELECT    = ini_read_real(section, "kb_select", -1);
global.P3_KEY_ACTION1   = ini_read_real(section, "kb_action1", -1);
global.P3_KEY_ACTION2   = ini_read_real(section, "kb_action2", -1);
global.P3_KEY_ACTION3   = ini_read_real(section, "kb_action3", -1);
global.P3_KEY_ACTION4   = ini_read_real(section, "kb_action4", -1);
global.P3_KEY_ACTION5   = ini_read_real(section, "kb_action5", -1);
global.P3_KEY_ACTION6   = ini_read_real(section, "kb_action6", -1);
global.P3_KEY_ACTION7   = ini_read_real(section, "kb_action7", -1);
global.P3_KEY_ACTION8   = ini_read_real(section, "kb_action8", -1);

// Gamepad controls
global.P3_PAD_UP        = ini_read_real(section, "pad_up", gp_padu);
global.P3_PAD_DN        = ini_read_real(section, "pad_dn", gp_padd);
global.P3_PAD_LT        = ini_read_real(section, "pad_lt", gp_padl);
global.P3_PAD_RT        = ini_read_real(section, "pad_rt", gp_padr);
global.P3_PAD_START     = ini_read_real(section, "pad_start", gp_start);
global.P3_PAD_SELECT    = ini_read_real(section, "pad_select", gp_select);
global.P3_PAD_ACTION1   = ini_read_real(section, "pad_action1", gp_face1);
global.P3_PAD_ACTION2   = ini_read_real(section, "pad_action2", gp_face2);
global.P3_PAD_ACTION3   = ini_read_real(section, "pad_action3", gp_face3);
global.P3_PAD_ACTION4   = ini_read_real(section, "pad_action4", gp_face4);
global.P3_PAD_ACTION5   = ini_read_real(section, "pad_action5", gp_shoulderl);
global.P3_PAD_ACTION6   = ini_read_real(section, "pad_action6", gp_shoulderlb);
global.P3_PAD_ACTION7   = ini_read_real(section, "pad_action7", gp_shoulderr);
global.P3_PAD_ACTION8   = ini_read_real(section, "pad_action8", gp_shoulderrb);

// Gamepad analog
global.P3_ANALOG_LH     = ini_read_real(section, "analog_lh", gp_axislh);
global.P3_ANALOG_LV     = ini_read_real(section, "analog_lv", gp_axislv);
global.P3_ANALOG_RH     = ini_read_real(section, "analog_rh", gp_axisrh);
global.P3_ANALOG_RV     = ini_read_real(section, "analog_rv", gp_axisrv);

// PLAYER 4
// ----------------------------------------------------------------------

// P4 scheme
global.P4_CONTROLS      = "gamepad";

// Keyboard controls
global.P4_KEY_UP        = ini_read_real(section, "kb_up", -1);
global.P4_KEY_DN        = ini_read_real(section, "kb_dn", -1);
global.P4_KEY_LT        = ini_read_real(section, "kb_lt", -1);
global.P4_KEY_RT        = ini_read_real(section, "kb_rt", -1);
global.P4_KEY_START     = ini_read_real(section, "kb_start", -1);
global.P4_KEY_SELECT    = ini_read_real(section, "kb_select", -1);
global.P4_KEY_ACTION1   = ini_read_real(section, "kb_action1", -1);
global.P4_KEY_ACTION2   = ini_read_real(section, "kb_action2", -1);
global.P4_KEY_ACTION3   = ini_read_real(section, "kb_action3", -1);
global.P4_KEY_ACTION4   = ini_read_real(section, "kb_action4", -1);
global.P4_KEY_ACTION5   = ini_read_real(section, "kb_action5", -1);
global.P4_KEY_ACTION6   = ini_read_real(section, "kb_action6", -1);
global.P4_KEY_ACTION7   = ini_read_real(section, "kb_action7", -1);
global.P4_KEY_ACTION8   = ini_read_real(section, "kb_action8", -1);

// Gamepad controls
global.P4_PAD_UP        = ini_read_real(section, "pad_up", gp_padu);
global.P4_PAD_DN        = ini_read_real(section, "pad_dn", gp_padd);
global.P4_PAD_LT        = ini_read_real(section, "pad_lt", gp_padl);
global.P4_PAD_RT        = ini_read_real(section, "pad_rt", gp_padr);
global.P4_PAD_START     = ini_read_real(section, "pad_start", gp_start);
global.P4_PAD_SELECT    = ini_read_real(section, "pad_select", gp_select);
global.P4_PAD_ACTION1   = ini_read_real(section, "pad_action1", gp_face1);
global.P4_PAD_ACTION2   = ini_read_real(section, "pad_action2", gp_face2);
global.P4_PAD_ACTION3   = ini_read_real(section, "pad_action3", gp_face3);
global.P4_PAD_ACTION4   = ini_read_real(section, "pad_action4", gp_face4);
global.P4_PAD_ACTION5   = ini_read_real(section, "pad_action5", gp_shoulderl);
global.P4_PAD_ACTION6   = ini_read_real(section, "pad_action6", gp_shoulderlb);
global.P4_PAD_ACTION7   = ini_read_real(section, "pad_action7", gp_shoulderr);
global.P4_PAD_ACTION8   = ini_read_real(section, "pad_action8", gp_shoulderrb);

// Gamepad analog
global.P4_ANALOG_LH     = ini_read_real(section, "analog_lh", gp_axislh);
global.P4_ANALOG_LV     = ini_read_real(section, "analog_lv", gp_axislv);
global.P4_ANALOG_RH     = ini_read_real(section, "analog_rh", gp_axisrh);
global.P4_ANALOG_RV     = ini_read_real(section, "analog_rv", gp_axisrv);

// Closing
ini_close();

// ANALOG WATCHER
// ----------------------------------------------------------------------

// Create analog watcher, if needed
if (use_analog && instance_number(obj_controlsAnalog) < 1) {
    instance_create(0, 0, obj_controlsAnalog);
}

