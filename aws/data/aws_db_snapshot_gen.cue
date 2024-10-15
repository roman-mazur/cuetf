package data

#aws_db_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_db_snapshot")
	allocated_storage?:             number
	availability_zone?:             string
	db_instance_identifier?:        string
	db_snapshot_arn?:               string
	db_snapshot_identifier?:        string
	encrypted?:                     bool
	engine?:                        string
	engine_version?:                string
	id?:                            string
	include_public?:                bool
	include_shared?:                bool
	iops?:                          number
	kms_key_id?:                    string
	license_model?:                 string
	most_recent?:                   bool
	option_group_name?:             string
	original_snapshot_create_time?: string
	port?:                          number
	snapshot_create_time?:          string
	snapshot_type?:                 string
	source_db_snapshot_identifier?: string
	source_region?:                 string
	status?:                        string
	storage_type?:                  string
	tags?: [string]: string
	vpc_id?: string
}
