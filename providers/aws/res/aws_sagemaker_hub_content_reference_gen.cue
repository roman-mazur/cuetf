package res

#aws_sagemaker_hub_content_reference: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_sagemaker_hub_content_reference")
	close({
		timeouts?: #timeouts

		// ARN of the private SageMaker Hub that contains the content reference.
		hub_arn?: string

		// ARN of the hub content reference (without version suffix). The min_version is
		// stripped off from the end of this ARN to make it usable to list tags.
		hub_content_arn?: string

		// Name of the hub content reference.
		hub_content_name!: string

		// Status of the hub content reference. Valid values include `Available`,
		// `Importing`, `Deleting`, `ImportFailed`, `DeleteFailed`.
		hub_content_status?: string

		// Version of the hub content reference.
		hub_content_version?: string

		// Name of the private SageMaker Hub to add the content reference to.
		hub_name!: string

		// Minimum version of the hub content to reference. Use "1.0.0" to support all
		// versions. Changing this value to an empty string forces replacement of the
		// resource.
		min_version?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// ARN of the public SageMaker JumpStart hub content to reference. The ARN must
		// not include a version suffix.
		sagemaker_public_hub_content_arn!: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
		// applicable if changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		update?: string
	})
}
