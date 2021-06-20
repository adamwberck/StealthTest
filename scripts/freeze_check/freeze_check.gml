function freeze_check(inst){
	if(global.freeze){
		for(var i=0;i<11;i++){
			if(alarm[i]!=-1){
				alarm[i]++;
			}
		}
	}
	return global.freeze;
}