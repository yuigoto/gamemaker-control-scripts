/// @description Wipes the current control scheme and restores the default
/// @function controlsWipe

// Variables
var controls_data = working_directory + "/config/controls.ini";

// Delete, if file exists
if (file_exists(controls_data)) {
    if (file_delete(controls_data)) controlsInit();
}
