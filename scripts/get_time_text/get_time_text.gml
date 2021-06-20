function get_time_text(argument0) {
	var seconds = (argument0)/60;
	if(seconds==floor(seconds)) then seconds+=.001;
	var minute = string(floor(seconds/60))+":";
	var sec_mod = seconds%60;
	return sec_mod<10 ? minute+"0"+string(sec_mod) : minute+string(sec_mod);


}
