function set_global_audio(gain) {
	var num = audio_get_listener_count();
	for( var i = 0; i < num; i++;){
		var info = audio_get_listener_info(i);
		audio_set_master_gain(info[? "index"], gain);
		ds_map_destroy(info);
	}


}
