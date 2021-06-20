///@
function abs_min() {
	var low = abs(argument[0]);
	for(var i=1;i<argument_count;i++){
		low = abs(low) < abs(argument[i]) ? low : argument[i];
	}
	return low;


}
