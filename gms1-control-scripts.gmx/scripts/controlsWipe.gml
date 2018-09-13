/// controlsWipe()

/**
 * Wipes the current control scheme and resets it to the defaults.
 */

var controls_data = working_directory + "/config/controls.ini";
if (file_exists(controls_data)) {
  if (file_delete(controls_data)) controlsInit();
}
