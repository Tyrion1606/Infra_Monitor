/// @description 
Flag_Positioning = false;

Max_Width = 1;
Width = 1;
Height = 1;

My_Label = instance_create_layer(id.x, id.y-30, "Instances", Obj_Label_Frame);
with(My_Label){
	My_Owner = other.id
}

My_Tokens = array_create(0);



