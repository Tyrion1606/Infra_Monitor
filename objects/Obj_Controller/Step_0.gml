/// @description

if Flag_Categorize_by_Role {
	var i_Compute = 0;
	var i_Infra = 0;
	var i_Master = 0;

	for (var i = 0; i < array_length(Tokens); ++i) {
		var Temp_Token = instance_create_layer(id.x, id.y, "Tokens", Obj_Token);
		
		Temp_Token.Atributes[0] = Tokens[i][0];
		Temp_Token.Atributes[1] = Tokens[i][1];
		Temp_Token.Atributes[2] = Tokens[i][2];
		
	    switch (Tokens[i][2]) {
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
	Flag_Categorize_by_Role = false;
}




