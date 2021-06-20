///@func array_copy_2d
///@param array
function array_copy_2d(argument0) {
	//for squares
	var len = array_height_2d(argument0);
	var arr;
	for(var i=0;i<len;i++){
		for(var j=0;j<len;j++)
			arr[i,j] = argument0[i,j];
	}
	return arr;


}
