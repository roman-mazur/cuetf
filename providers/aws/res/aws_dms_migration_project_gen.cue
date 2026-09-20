package res

aws_dms_migration_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_dms_migration_project")
	close({
		schema_conversion_application_attributes?: matchN(1, [#schema_conversion_application_attributes, [...#schema_conversion_application_attributes]])
		source_data_provider_descriptor?: matchN(1, [#source_data_provider_descriptor, [...#source_data_provider_descriptor]])
		target_data_provider_descriptor?: matchN(1, [#target_data_provider_descriptor, [...#target_data_provider_descriptor]])
		timeouts?: #timeouts
		arn?:      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                string
		creation_time?:         string
		description?:           string
		instance_profile_arn!:  string
		instance_profile_name?: string
		name?:                  string
		tags?: [string]:     string
		tags_all?: [string]: string
		transformation_rules?: string
	})

	#schema_conversion_application_attributes: close({
		s3_bucket_path?:     string
		s3_bucket_role_arn?: string
	})

	#source_data_provider_descriptor: close({
		data_provider_arn!:               string
		data_provider_name?:              string
		secrets_manager_access_role_arn?: string
		secrets_manager_secret_id?:       string
	})

	#target_data_provider_descriptor: close({
		data_provider_arn!:               string
		data_provider_name?:              string
		secrets_manager_access_role_arn?: string
		secrets_manager_secret_id?:       string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		create?: string
	})
}
