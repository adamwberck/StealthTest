function choose_two() {
	var ar;
	var r = irandom(argument_count-1);
	var b = irandom(argument_count-2);
	b = b==r ? argument_count-1: b;
	ar[0]=argument[r]; ar[1]=argument[b];
	return ar;


}
