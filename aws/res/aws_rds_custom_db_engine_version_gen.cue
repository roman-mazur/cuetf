package res

#aws_rds_custom_db_engine_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_rds_custom_db_engine_version")
	arn?:                                        string
	create_time?:                                string
	database_installation_files_s3_bucket_name?: string
	database_installation_files_s3_prefix?:      string
	db_parameter_group_family?:                  string
	description?:                                string
	engine!:                                     string
	engine_version!:                             string
	filename?:                                   string
	id?:                                         string
	image_id?:                                   string
	kms_key_id?:                                 string
	major_engine_version?:                       string
	manifest?:                                   string
	manifest_computed?:                          string
	manifest_hash?:                              string
	source_image_id?:                            string
	status?:                                     string
	tags?: [string]: string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
