function set_window() {

	display_reset(8,false);

	if(os_type==os_android){
		var max_w = display_get_width();//1440
		var max_h = display_get_height();//2960
	}else if(os_type==os_windows){
		var scale = .90;
		window_set_size(scale*414,scale*734);
	
		var max_w = window_get_width();//1440
		var max_h = window_get_height();//2960
	}

	var scale = 1600/max_w;
	max_w*=scale;
	max_h*=scale;
	camera_set_view_size(view_camera[0],max_w,max_h);
	camera_set_view_pos(view_camera[0],-.5*max_w+1366,-.5*max_h+1344);


}
