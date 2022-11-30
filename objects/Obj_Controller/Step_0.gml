/// @description

if Flag_Load_Changes_From_File {
	Tokens_Data = Fn_Array_Load_From_Text_txt("Nodes.txt");
	

	Flag_Load_Changes_From_File = false;
}
	
if Flag_Create_Tokens {
	instance_destroy(Obj_Token);	// Clear
	for (var i = 1; i < array_length(Tokens_Data); i++) {
		Tokens[i] = instance_create_layer(id.x, id.y, "Tokens", Obj_Token);
	}

	Flag_Create_Tokens = false;
}

if Flag_Set_Attributes {
	for (var i = 1; i < array_length(Tokens_Data); i++) {
		var Temp_Token = Tokens[i];
	    #region Attributes Ijection
			Temp_Token.Attributes[0] = Tokens_Data[i][0];			// Name
			Temp_Token.Attributes[1] = Tokens_Data[i][1];			// Status
			Temp_Token.Attributes[2] = Tokens_Data[i][2];			// Role
		#endregion
	}
	Flag_Set_Attributes = false
}

if Flag_Categorize_by_Role {
	var i_Compute = 0;
	var i_Infra = 0;
	var i_Master = 0;
	
	Obj_Frame_Compute.My_Tokens = array_create(0);	// Clean the array
	Obj_Frame_Infra.My_Tokens = array_create(0);	// Clean the array
	Obj_Frame_Master.My_Tokens = array_create(0);	// Clean the array
	
	for (var i = 1; i < array_length(Tokens_Data); i++) {
		var Temp_Token = Tokens[i];
	    switch (Tokens_Data[i][2]) {
		    case "Compute":
		        Obj_Frame_Compute.My_Tokens[i_Compute] = Temp_Token;
				i_Compute++;
		        break;
			case "Infra":
		        Obj_Frame_Infra.My_Tokens[i_Infra] = Temp_Token;
				i_Infra++;
		        break;
			case "Master":
		        Obj_Frame_Master.My_Tokens[i_Master] = Temp_Token;
				i_Master++;
		        break;
		    default:
		        // code here
		        break;
		}
	}

	Obj_Frame.Flag_Positioning = true;
	Flag_Categorize_by_Role = false;
}


if Flag_Moving_Screen {


}
