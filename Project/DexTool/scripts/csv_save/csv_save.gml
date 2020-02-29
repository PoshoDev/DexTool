/// @description csv_save(filename, array, _sep)
/// @param filename
/// @param  array
/// @param  _sep
/***************************************************
    Loads in an included .csv file
    
    argument0 - The filename of the .csv
    argument1 - The array to be converted to a .csv
    argument2 (Optional) - The seperator being used if not ","
    
    returns: N/A
 ***************************************************/

var fname = argument[0]; // The filename you want to use
var arr_tmp = argument[1]; // The array you want to save as a .csv
var file; // Stores the file id
var str = ""; // Temp store the string as it is being complied

// Select the seperator being used
if (argument_count > 2)
    var sep = argument[2]; // Use custom seperator
else
    var sep = ","; // Default seperator

file = file_text_open_write(string(fname) + ".csv"); // Open or create the .csv

for (i = 0; i < array_height_2d(arr_tmp); i++) {
    str = "";
    
    // Compile the string to be written
    for (var j = 0; j < array_length_2d(arr_tmp, i); j++) {
        str += string(arr_tmp[i, j]);
        str += sep;    
    }
    str = string_delete(str,string_length(str),1); // Remove the seperator at the end of the string
    
    file_text_write_string(file, str); // Write the string to the file
    file_text_writeln(file); // Insert an endline character
}

file_text_close(file); // Close the file
