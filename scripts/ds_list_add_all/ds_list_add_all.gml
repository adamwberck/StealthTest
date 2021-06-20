///@description ds_list_add_all
///@argument0 list_gain
///@argument1 list_copy
function ds_list_add_all(argument0, argument1) {
	for(var i=0;i<ds_list_size(argument1);i++){
		ds_list_add(argument0,argument1[|i]);
	}


}
