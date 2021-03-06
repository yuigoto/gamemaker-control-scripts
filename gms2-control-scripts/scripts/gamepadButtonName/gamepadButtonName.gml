/// @description Returns the name of the gamepad button by its code
/// @function gamepadButtonName
/// @param {real} button Gamepad button code

switch (argument[0]) {
  case gp_padu:
    return "D-Pad Up";
    break;
  case gp_padd:
    return "D-Pad Down";
    break;
  case gp_padl:
    return "D-Pad Left";
    break;
  case gp_padr:
    return "D-Pad Right";
    break;
  case gp_face1:
    return "Button 1";
    break;
  case gp_face2:
    return "Button 2";
    break;
  case gp_face3:
    return "Button 3";
    break;
  case gp_face4:
    return "Button 4";
    break;
  case gp_select:
    return "Select";
    break;
  case gp_start:
    return "Start";
    break;
  case gp_shoulderl:
    return "Left Shoulder";
    break;
  case gp_shoulderlb:
    return "Left Trigger";
    break;
  case gp_shoulderr:
    return "Right Shoulder";
    break;
  case gp_shoulderrb:
    return "Right Trigger";
    break;
  case gp_stickl:
    return "Left Stick Button";
    break;
  case gp_stickr:
    return "Right Stick Button";
    break;
  case gp_axislh:
    return "Left Axis Horizontal";
    break;
  case gp_axislv:
    return "Left Axis Vertical";
    break;
  case gp_axisrh:
    return "Right Axis Horizontal";
    break;
  case gp_axisrv:
    return "Right Axis Vertical";
    break;
  default:
    return "None";
    break;
}
