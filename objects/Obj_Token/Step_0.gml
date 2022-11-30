/// @description 

if(Flag_Changes){
	
	switch (Attributes[1]) {
	    case "Ready":
	        image_index = 1
	        break;
	    default:
	        image_index = 0
	        break;
	}
	show_debug_message("Estado: " + string(Attributes[1]) + string(image_index))

	Flag_Changes = false;
}

