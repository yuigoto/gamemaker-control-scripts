/// @description  approach(start, end, step)
/// @function  approach
/// @param start
/// @param  end
/// @param  step

/**
 * Shifts the start value towards end, by steps.
 * 
 * From the "Grandma Engine", by Matt Thorson.
 */
if (argument[0] > argument[1]) {
    return max(argument[0] - argument[2], argument[1]);
} else {
    return min(argument[0] + argument[2], argument[1]);
}

