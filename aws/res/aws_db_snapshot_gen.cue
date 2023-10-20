package res

#aws_db_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_db_snapshot")
	allocated_storage?:     number
	availability_zone?:     string
	db_instance_identifier: string
	db_snapshot_arn?:       string
	db_snapshot_identifier: string
	encrypted?:             bool
	engine?:                string
	engine_version?:        string
	id?:                    string
	iops?:                  number
	kms_key_id?:            string
	license_model?:         string
	option_group_name?:     string
	port?:                  number
	shared_accounts?: [...string]
	snapshot_type?:                 string
	source_db_snapshot_identifier?: string
	source_region?:                 string
	status?:                        string
	storage_type?:                  string
	tags?: [string]: string
	tags_all?: [string]: string
	vpc_id?:   string
	timeouts?: #timeouts

	#timeouts: create?: string
}
