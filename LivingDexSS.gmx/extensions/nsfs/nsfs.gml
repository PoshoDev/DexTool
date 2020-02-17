#define nsfs_init
/// ()
//#global nsfs_is_available:
//#nsfs_status = nsfs_get_status():
nsfs_is_available = nsfs_init_raw();

#define buffer_load_ns
/// (path):
var n = buffer_load_ns_raw1(argument0), r;
if (n >= 0) {
	if (n == 0) { // bug: GMS does not allow to create zero-size buffers.
		r = buffer_create(1, buffer_fixed, 1);
		buffer_resize(r, 0);
	} else r = buffer_create(n, buffer_fixed, 1);
	buffer_load_ns_raw2(buffer_get_address(r), n);
	return r;
} else return -1;

#define buffer_save_ns
/// (buffer, path):
var b = argument0;
return buffer_save_ns_raw(buffer_get_address(b), argument1, buffer_get_size(b));

#define buffer_save_ext_ns
/// (buffer, path, offset, size):
var b = argument0;
var m = buffer_get_size(b);
var i = argument2;
var n = clamp(i + argument3, 0, m);
i = clamp(i, 0, m);
n -= i;
if (n > 0) {
	return buffer_save_ns_raw(buffer_get_address(b) + i, argument1, n);
} else return -1;
