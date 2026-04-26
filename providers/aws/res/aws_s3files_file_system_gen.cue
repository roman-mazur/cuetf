package res

#aws_s3files_file_system: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_s3files_file_system")
	close({
		timeouts?:              #timeouts
		accept_bucket_warning?: bool
		arn?:                   string

		// S3 bucket ARN
		bucket!: string

		// Creation time
		creation_time?: string
		id?:            string

		// KMS key ID for encryption
		kms_key_id?: string

		// File system name
		name?: string

		// AWS account ID of the owner
		owner_id?: string

		// S3 bucket prefix
		prefix?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// IAM role ARN for S3 access
		role_arn!: string

		// File system status
		status?: string

		// Status message
		status_message?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string
	})
}
