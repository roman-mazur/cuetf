package res

#aws_s3files_synchronization_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_s3files_synchronization_configuration")
	close({
		expiration_data_rule?: matchN(1, [#expiration_data_rule, [...#expiration_data_rule]])
		import_data_rule?: matchN(1, [#import_data_rule, [...#import_data_rule]])

		// File system ID
		file_system_id!: string

		// Latest version number for optimistic locking
		latest_version_number?: number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#expiration_data_rule: close({
		// Days after last access before data expires
		days_after_last_access!: number
	})

	#import_data_rule: close({
		// S3 prefix for import
		prefix!: string

		// Maximum file size to import
		size_less_than!: number

		// Import trigger type
		trigger!: string
	})
}
