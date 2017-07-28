/// @description  keyCodeName(code)
/// @function  keyCodeName
/// @param code

/**
 * Returns the name of the key represented by the code in the 
 * keyboard.
 * 
 * @param {int} code 
 *      Code for the keyboard's key desired 
 */

// Check global key values
switch ( argument[0] ) {
    case vk_left: 
        return "Left arrow";
        break;
    case vk_right: 
        return "Right arrow";
        break;
    case vk_up: 
        return "Up arrow";
        break;
    case vk_down: 
        return "Down arrow";
        break;
    case vk_enter: 
        return "Enter";
        break;
    case vk_escape: 
        return "Escape";
        break;
    case vk_space: 
        return "Space";
        break;
    case vk_shift: 
        return "Shift";
        break;
    case vk_lshift: 
        return "Left Shift";
        break;
    case vk_rshift: 
        return "Right Shift";
        break;
    case vk_control: 
        return "Control";
        break;
    case vk_lcontrol: 
        return "Left Control";
        break;
    case vk_rcontrol: 
        return "Right Control";
        break;
    case vk_alt: 
        return "Alt";
        break;
    case vk_lalt: 
        return "Left Alt";
        break;
    case vk_ralt: 
        return "Right Alt";
        break;
    case vk_backspace: 
        return "Backspace";
        break;
    case vk_tab: 
        return "Tab";
        break;
    case vk_home: 
        return "Home";
        break;
    case vk_end: 
        return "End";
        break;
    case vk_delete: 
        return "Delete";
        break;
    case vk_insert: 
        return "Insert";
        break;
    case vk_pageup: 
        return "Page Up";
        break;
    case vk_pagedown: 
        return "Page Down";
        break;
    case vk_pause: 
        return "Pause/Break";
        break;
    case vk_printscreen: 
        return "Printscreen/SysRq";
        break;
    case vk_f1: 
        return "F1";
        break;
    case vk_f2: 
        return "F2";
        break;
    case vk_f3: 
        return "F3";
        break;
    case vk_f4: 
        return "F4";
        break;
    case vk_f5: 
        return "F5";
        break;
    case vk_f6: 
        return "F6";
        break;
    case vk_f7: 
        return "F7";
        break;
    case vk_f8: 
        return "F8";
        break;
    case vk_f9: 
        return "F9";
        break;
    case vk_f10: 
        return "F10";
        break;
    case vk_f11: 
        return "F11";
        break;
    case vk_f12: 
        return "F12";
        break;
    case vk_numpad0: 
        return "Numpad 0";
        break;
    case vk_numpad1: 
        return "Numpad 1";
        break;
    case vk_numpad2: 
        return "Numpad 2";
        break;
    case vk_numpad3: 
        return "Numpad 3";
        break;
    case vk_numpad4: 
        return "Numpad 4";
        break;
    case vk_numpad5: 
        return "Numpad 5";
        break;
    case vk_numpad6: 
        return "Numpad 6";
        break;
    case vk_numpad7: 
        return "Numpad 7";
        break;
    case vk_numpad8: 
        return "Numpad 8";
        break;
    case vk_numpad9: 
        return "Numpad 9";
        break;
    case vk_multiply: 
        return "Numpad multiply";
        break;
    case vk_divide: 
        return "Numpad divide key on the numeric keypad";
        break;
    case vk_add: 
        return "Numpad plus key on the numeric keypad";
        break;
    case vk_subtract: 
        return "Numpad subtract";
        break;
    case vk_decimal: 
        return "Numpad decimal";
        break;
}

// Checking numbers
for ( var i = ord( "0" ); i <= ord( "9" ); i++ ) {
    if ( i == argument[0] ) return chr( argument[0] );
}

// Checking letters
for ( var i = ord( "A" ); i <= ord( "Z" ); i++ ) {
    if ( i == argument[0] ) return chr( argument[0] );
}

// Return false, if anything else fails
return false;

