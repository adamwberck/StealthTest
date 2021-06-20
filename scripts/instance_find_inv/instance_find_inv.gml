function instance_find_inv(inst) {
	var oi = inst.object_index
	for(var i=0;i<instance_number(oi);i++){
		if(instance_find(oi,i)==inst){
			return i;
		}
	}


}
