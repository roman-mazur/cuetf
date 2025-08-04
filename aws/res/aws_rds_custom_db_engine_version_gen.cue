package res

#aws_rds_custom_db_engine_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rds_custom_db_engine_version")
	close({
		arn?:                                        string
		create_time?:                                string
		database_installation_files_s3_bucket_name?: string
		database_installation_files_s3_prefix?:      string
		db_parameter_group_family?:                  string
		description?:                                string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		engine!:               string
		engine_version!:       string
		filename?:             string
		id?:                   string
		timeouts?:             #timeouts
		image_id?:             string
		kms_key_id?:           string
		major_engine_version?: string
		manifest?:             string
		manifest_computed?:    string
		manifest_hash?:        string
		source_image_id?:      string
		status?:               string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
