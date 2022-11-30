function Fn_Tokens_Load_From_Text_txt(File_Name){
	
	var File = file_text_open_read(File_Name);
	
	var Line = 0;
	var Lines_Array;
	
	while (!file_text_eof(File)) {
	    Lines_Array[Line++] = file_text_readln(File);
	}
	
	file_text_close(File);
	
	var Tokens_Array;
	var Array_Line = 0;
	for (Line = 0 ; Line < array_length(Lines_Array) ; Line++) {
		
		var String = Lines_Array[Line];	// the String of one line of the file
		//show_debug_message(String)
		var Temp_Str = "";	// Starts a Empty String
		var Array_Column = 0;
		for (var i = 1 ; i <= string_length(String) ; i++) {
		    var Character = string_char_at(String,i);
			var Next_char = string_char_at(String,i+1);
			show_debug_message("Char:" + string(Character) + " Unicode:" + string(string_ord_at(String,i)));
			show_debug_message("Next Unicode:" + string(string_ord_at(String,i+1)));
			
			
			
			if (Character == chr(9) or  Character == chr(10) or Character == chr(13) or Next_char == ""){
				/*if (Line == array_length(Lines_Array)) {	//Ultima Letra
					Temp_Str += string(Character);
					Tokens_Array[Array_Line][Array_Column] = Temp_Str;
				}*/
				//show_debug_message("é um espaço")
				//show_debug_message("Char:" + string(Character) + " Unicode:" + string(string_ord_at(String,i)));
				//show_debug_message("Unicode:" + string(string_ord_at(String,i)));
				if (Next_char != chr(9) and  Next_char != chr(10) and Next_char != chr(13)){
					Tokens_Array[Array_Line][Array_Column] = Temp_Str
					Array_Column++
					Temp_Str = "";
					
					
				}
				continue;
			}
			Temp_Str += string(Character);
		}
		Array_Line++;
		show_debug_message(Tokens_Array);
		
	}
	//return Tokens_Array;
}