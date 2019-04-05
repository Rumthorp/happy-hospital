//argument0 = number of patients
//argument1 = grid_id
//argument2 = default happiness decay
//argument3 = grid y offset
//argument4 = patient margin

var patient_instance;
var y_offset = argument3;

for (var h = 0; h < ds_grid_height(argument1); h ++) {
	for (var w = 0; w < ds_grid_width(argument1); w ++) {
		if (argument0 == 0) exit;
		
		patient_instance = instance_create_layer(
			sprite_get_width(spr_face_content) * w, 
			sprite_get_height(spr_face_content) * h + y_offset, 
			"Instances", 
			obj_patient);
		patient_instance.happiness_decay_ = argument2;
		patient_instance.grid_x_ = h;
		patient_instance.grid_y_ = w;
		ds_grid_set(argument1, h, w, patient_instance);
		argument0 --;
	}
	
	y_offset = y_offset + argument4;
}

