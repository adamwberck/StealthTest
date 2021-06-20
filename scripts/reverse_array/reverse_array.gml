///@func reverse_array
///@param array
function reverse_array(argument0) {
	var array = argument0;
	var rArray;
	for(var i=0;i<array_length_1d(array);i++){
		rArray[array_length_1d(array)-i-1] = array[i];
	}
	return rArray;


}
