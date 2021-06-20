///hex(integer)
function hex(argument0) {
	//
	//------------------------------
	// 
	// Converts a given integer to
	// the unsigned hexadecimal
	// equivalent in string format.
	// 
	//------------------------------

	//Store argument in local variable
	var val = argument0;

	//Prepare variables
	var a, i, s;

	//Convert integer to hex
	i = 0;
	while (val >= 16) {
	    a[i] = val mod 16;
	    val = val div 16;
	    if (val > 16) i++;
	}

	//Compose string from hex result
	s = c_hex(val);
	if (i > 0) {
	    for (i = array_length_1d(a) - 1; i >= 0; i--) {
	        s += c_hex(a[i]);
	    }
	}

	//Return hexadecimal string
	return s;


}
