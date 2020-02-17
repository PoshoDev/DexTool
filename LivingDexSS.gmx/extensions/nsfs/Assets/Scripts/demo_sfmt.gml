/// sfmt(format, ...)
// ("%/%", 1, 2) -> "1/2"
var s = argument[0], r = "", i = 0;
repeat (argument_count - 1) {
    var p = string_pos("%", s);
    if (p > 0) {
        r += string_copy(s, 1, p - 1) + string(argument[++i]);
        s = string_copy(s, p + 1, string_length(s) - p);
    } else show_error("sfmt: argument/format count mismatch", false);
}
return r + s;
