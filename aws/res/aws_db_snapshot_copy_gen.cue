package res

#aws_db_snapshot_copy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_db_snapshot_copy")
	allocated_storage?:            number
	availability_zone?:            string
	copy_tags?:                    bool
	db_snapshot_arn?:              string
	destination_region?:           string
	encrypted?:                    bool
	engine?:                       string
	engine_version?:               string
	id?:                           string
	iops?:                         number
	kms_key_id?:                   string
	license_model?:                string
	option_group_name?:            string
	port?:                         number
	presigned_url?:                string
	snapshot_type?:                string
	source_db_snapshot_identifier: string
	source_region?:                string
	storage_type?:                 string
	tags?: [string]: string
	tags_all?: [string]: string
	target_custom_availability_zone?: string
	target_db_snapshot_identifier:    string
	vpc_id?:                          string
	timeouts?:                        #timeouts

	#timeouts: create?: string
}
