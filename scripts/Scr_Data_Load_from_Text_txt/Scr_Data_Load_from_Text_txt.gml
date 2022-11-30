function Fn_Array_Load_From_Text_txt(File_Name){
	Lines_Array = Fn_Lines_of_File_txt(File_Name);	// Taking a Array<String> from the lines of a File
	
	for (var i = 0 ; i < array_length(Lines_Array) ; i++) {
	    Words_Array[i] = Fn_String_to_Array_of_Words(Lines_Array[i]);
	}
	return Words_Array;
}

function Fn_Lines_of_File_txt(File_Name){
	var File = file_text_open_read(File_Name);
	
		var Line = 0;
		var Lines_Array;
	
		while (!file_text_eof(File)) {
		    Lines_Array[Line++] = file_text_readln(File);
		}
	
	file_text_close(File);
	return Lines_Array;
}

function Fn_String_to_Array_of_Words(String){
	var Temp_Word = "";
	var Words_Array = array_create(0);
	for (var i = 1 ; i <= string_length(String)+1 ; i++) {	// Loop through all elements on the string (goes one more to identify the end as a negative unicode)
		var Char_Element = string_char_at(String,i);
		var Unicode_Element = string_ord_at(String,i);
	    if (Unicode_Element == 9 or Unicode_Element == 10 or Unicode_Element == 13 or Unicode_Element < 0){
			if (string_length(Temp_Word) = 0){	// if the word is empty:
				continue;							// -> skip the rest of the instructions and go next loop
			}
			array_push(Words_Array,Temp_Word);	// Puts the word on the array
			Temp_Word = "";						// Clear the word to the next one
		} else {
			Temp_Word += Char_Element;			// Add a character to the word
		}
	}
	return Words_Array
}


//show_debug_message("Char:" + string(Character) + " Unicode:" + string(string_ord_at(String,i)));