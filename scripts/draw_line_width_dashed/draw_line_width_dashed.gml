function draw_line_width_dashed(x1, y1, x2, y2, w, l1, l2) {
	var dir = point_direction(x1,y1,x2,y2), dis = point_distance(x1,y1,x2,y2);
	var x_cap,y_cap;
	x_cap[0] = min(x1,x2);x_cap[1] = max(x1,x2);y_cap[0] = min(y1,y2);y_cap[1] = max(y1,y2);

	var tracker=0;
	while(tracker<dis){
		var nx = x1+lengthdir_x(l1,dir),ny = y1+lengthdir_y(l1,dir);//new x and new y
		nx = clamp(nx,x_cap[0],x_cap[1]);ny = clamp(ny,y_cap[0],y_cap[1]);
		draw_line_width(x1,y1,nx,ny,w);
		x1 = nx+lengthdir_x(l2,dir); 
		y1 = ny+lengthdir_y(l2,dir);//advnace x1 and x2
		x1 = clamp(x1,x_cap[0],x_cap[1]);
		y1 = clamp(y1,y_cap[0],y_cap[1]);//clamp the dash
		tracker+=l1+l2;
	}


}
