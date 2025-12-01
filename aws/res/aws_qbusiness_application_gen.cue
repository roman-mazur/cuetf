package res

#aws_qbusiness_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_qbusiness_application")
	close({
		arn?: string

		// A description of the Amazon Q application.
		description?: string

		// The display name of the Amazon Q application.
		display_name!: string

		// The Amazon Resource Name (ARN) of the IAM service role that
		// provides permissions for the Amazon Q application.
		iam_service_role_arn!:            string
		id?:                              string
		identity_center_application_arn?: string

		// ARN of the IAM Identity Center instance you are either creating
		// for—or connecting to—your Amazon Q Business application
		identity_center_instance_arn!: string
		attachments_configuration?: matchN(1, [#attachments_configuration, [...#attachments_configuration]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		encryption_configuration?: matchN(1, [#encryption_configuration, [...#encryption_configuration]])
		timeouts?: #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#attachments_configuration: close({
		// Status information about whether file upload functionality is
		// activated or deactivated for your end user.
		attachments_control_mode!: string
	})

	#encryption_configuration: close({
		// The identifier of the AWS KMS key that is used to encrypt your
		// data. Amazon Q doesn't support asymmetric keys.
		kms_key_id!: string
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

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})
}
