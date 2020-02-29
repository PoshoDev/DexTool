/// @description csv_load_escape(filename, _sep)
/// @param filename
/// @param  _sep
/***************************************************
    Loads in an included .csv file
    Same as csv_load, but will ignore seperators in quotes
    If you want to use a quote, exit it first by using another quote (e.g. "" imports to ")
    
    argument0 - The filename of the .csv
    argument1 (Optional) - The seperator being used if not ","
    
    returns: array
 ***************************************************/
var arr_tmp; // Temporary array to store the data
var file; // File that you are reading
var str; // Each line as a string

var esc = 34; // Quotation mark Unicode number

// Select the seperator being used
if (argument_count > 1)
    var sep = argument[1]; // Use custom seperator
else
    var sep = ","; // Default seperator

var i = 0; // The current row
var j = 0; // The current column


// Open the selected file
file = file_text_open_read(working_directory + string(argument[0]) + ".csv");

// Loop though the file
while (true) {
    
    // Check for end of file
    if (file_text_eof(file))
        break;
    
    // Read into the array
    str = file_text_read_string(file);
    j = 0; // Back to first column
    
    while (string_length(str) > 0) {
        if (string_count(sep, str) > 0) {
        
            var pos_end = 1;
            var cur = 1;
            var escape = false;
            
            // Travel cursor through string
            while (true) {
                var char = string_char_at(str, cur);
                
                // Check to see if end of string is reached
                if (char == "") {
                    pos_end = cur;
                    break;
                }
                
                // Check to see if we hit a seperator
                if (char == sep && escape == false) {
                    pos_end = cur;
                    break;
                }
                
                // Escape string
                if (char == chr(esc))
                    escape = !escape;                  
                
                // Move the cursor
                cur++;
            }
            
            // Copy section to array
            arr_tmp[i, j] = string(string_copy(str, 1, cur-1));
            
            // Clean up encapsulation quotes
            if (string_char_at(arr_tmp[i, j], 1) == chr(esc))
                arr_tmp[i, j] = string_copy(arr_tmp[i, j], 2, string_length(str));
            
            if (string_char_at(arr_tmp[i, j], string_length(arr_tmp[i, j])) == chr(esc))
                arr_tmp[i, j] = string_copy(arr_tmp[i, j], 1, string_length(arr_tmp[i, j])-1);
                
            arr_tmp[i, j] = string_replace_all(arr_tmp[i, j], chr(esc) + chr(esc), chr(esc));
            
            // Removed processed part of string
            str = string_delete(str, 1, cur);
            // Debug Log
            trace("Array[" + string(i) + "," + string(j) + "] = " + string(arr_tmp[i, j]));
            // Move to next column
            j++;
        }
        else {
            arr_tmp[i, j] = string_copy(str, 1, string_length(str));
            trace("Array[" + string(i) + "," + string(j) + "] = " + string(arr_tmp[i, j]));
            break;
        }
    }
    // Next line in the file
    file_text_readln(file);
    i++;
}

// Close the file
file_text_close(file);

// Return the array
return arr_tmp;
