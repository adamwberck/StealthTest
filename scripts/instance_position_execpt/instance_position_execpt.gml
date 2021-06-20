///@func instance_position_execpt
function instance_position_execpt(x, y, obj, execept) {
	var i = instance_position(x, y, obj);
	return i == execept ? noone : i;


}
