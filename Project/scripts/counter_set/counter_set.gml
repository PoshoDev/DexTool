function counter_set() {
	global.counter = get_string("Set Counter:", global.counter);
	counter_update();


}
