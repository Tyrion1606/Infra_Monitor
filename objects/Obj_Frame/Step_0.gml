/// @description 

if(Flag_Positioning){
	//show_debug_message(id.My_Tokens)
	var first_x = id.x+24;
	var first_y = id.y+36;
	Height = 0;
	Width = 0;
	image_yscale = 1;
	for(var i = 0 ; i < array_length(My_Tokens) ; i++){
		My_Tokens[i].x = first_x+(156*Width);
		My_Tokens[i].y = first_y+(96*Height);
		Width++;
		if (Width >= Max_Width){
			Height++;
			Width = 0
			image_yscale += (2/3)
		}
	}

	Flag_Positioning = false
}


