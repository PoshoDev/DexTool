function progress_update() {
	if (own_prev==0 && own!=0)
	    global.progress++;
	else if (own_prev!=0 && own==0)
	    global.progress--;


}
