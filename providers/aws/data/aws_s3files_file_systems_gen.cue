package data

#aws_s3files_file_systems: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_s3files_file_systems")
	close({
		file_systems?: matchN(1, [#file_systems, [...#file_systems]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#file_systems: close({
		// File system ARN
		arn?: string

		// S3 bucket ARN
		bucket?: string

		// Creation time
		creation_time?: string

		// File system ID
		id?: string

		// KMS key ID for encryption
		kms_key_id?: string

		// File system name
		name?: string

		// AWS account ID of the owner
		owner_id?: string

		// IAM role ARN
		role_arn?: string

		// File system status
		status?: string

		// Status message
		status_message?: string
	})
}
