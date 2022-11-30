/// @description 

if(Flag_Positioning){
	var first_x = id.x+20;
	var first_y = id.y+30;
	Height = 0;
	Width = 0;
	image_yscale = 1;
	for(var i = 0 ; i < array_length(My_Tokens) ; i++){
		My_Tokens[i].x = first_x+(130*Width);
		My_Tokens[i].y = first_y+(80*Height);
		Width++;
		if (Width >= Max_Width){
			Height++;
			Width = 0
			image_yscale += (2/3)
		}
	}
	
	Flag_Positioning = false
}


