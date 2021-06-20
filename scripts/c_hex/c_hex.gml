///c_hex(integer)
function c_hex(argument0) {
	//
	//------------------------------
	// 
	// Not to be used manually.
	// Used by "hex" script.
	// 
	//------------------------------

	//Store argument in local variable
	var num = argument0;

	//Prepare variable
	var r;

	//Quick conversion
	if (num < 10) {
	    r = string(num);
	} else {
	    switch (num) {
	        case 10:    r = "A";
	                    break;
	        case 11:    r = "B";
	                    break;
	        case 12:    r = "C";
	                    break;
	        case 13:    r = "D";
	                    break;
	        case 14:    r = "E";
	                    break;
	        case 15:    r = "F";
	                    break
	    }
	}

	//Return result
	return r;


}
