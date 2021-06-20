function num_separator(value, separator, digits) {


	value = string(round(value));
	digits = digits - 1;

	var res = "";

	var cnt = 0;
	for (var i=string_length(value); i>0; i--)
	{
	    res = string_char_at(value, i) + res;
	    if cnt++ == digits and i > 1
	    {
	        cnt = 0;
	        res = separator + res;
	    }
	}

	return res;


}
