//variables

patients_ = 9;
default_happiness_decay_ = .2;

patient_grid_id_ = ds_grid_create(3, 3);
patient_grid_y_offset_ = 0;
patient_margin_ = 20;

scr_generate_patients(
	patients_, 
	patient_grid_id_,
	default_happiness_decay_,
	patient_grid_y_offset_,
	patient_margin_);