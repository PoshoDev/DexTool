///csv_load(filename, _sep)
/***************************************************
    Loads in an included .csv file
    
    argument0 - The filename of the .csv
    argument1 (Optional) - The seperator being used if not ","
    
    returns: array
 ***************************************************/
var arr_tmp; // Temporary array to store the data
var file; // File that you are reading
var str; // Each line as a string

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
            arr_tmp[i, j] = string_copy(str, 1, string_pos(sep, str)-1);
            str = string_delete(str, 1, string_pos(sep, str));
            trace("Array[" + string(i) + "," + string(j) + "] = " + string(arr_tmp[i, j]));
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
