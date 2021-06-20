function index_from_val(array, val) {
	for(var i = 0; i < array_length(array); i++){
		if(array[i] == val) then return i;
	}
	return -1;
}
